#!/bin/bash


source ~/debiansys/vars.inc

touch ~/.gnupg/trustedkeys.gpg
chmod 600 ~/.gnupg/trustedkeys.gpg
gpg --keyserver $REPO_KSRV --primary-keyring ~/.gnupg/trustedkeys.gpg --recv-keys $REPO_KEY
#gpg --primary-keyring ~/.gnupg/trustedkeys.gpg --fetch-keys http://ftp-master.debian.org/keys/archive-key-5.0.asc 

fakeroot debootstrap --make-tarball=TB.tgz --verbose --arch=$ARCH --keyring=~/.gnupg/trustedkeys.gpg $RELEASE sys $REPO_URL
