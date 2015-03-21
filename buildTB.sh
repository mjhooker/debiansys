#!/bin/bash

touch ~/.gnupg/trustedkeys.gpg
chmod 600 ~/.gnupg/trustedkeys.gpg
#gpg --keyserver pgpkeys.mit.edu --primary-keyring ~/.gnupg/trustedkeys.gpg --recv-keys 55BE302B
gpg --primary-keyring ~/.gnupg/trustedkeys.gpg --fetch-keys http://ftp-master.debian.org/keys/archive-key-5.0.asc 

fakeroot debootstrap --make-tarball=TB.tgz --verbose --arch=amd64 --keyring=~/.gnupg/trustedkeys.gpg testing sys file:///var/www/debian/debian
