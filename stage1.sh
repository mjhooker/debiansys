#!/bin/bash


source ~/debiansys/vars.inc

mkdir ~/.gnupg
chmod 600 ~/.gnupg
touch ~/.gnupg/trustedkeys.gpg
chmod 600 ~/.gnupg/trustedkeys.gpg
gpg --keyserver $REPO_KSRV --primary-keyring ~/.gnupg/trustedkeys.gpg --recv-keys $REPO_KEY

fakeroot debootstrap --make-tarball=TB.tgz --verbose --arch=$ARCH --keyring=~/.gnupg/trustedkeys.gpg $RELEASE sys $REPO_URL
