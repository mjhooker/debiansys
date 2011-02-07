#!/bin/bash


LANG=C
export lang

echo "deb http://security.debian.org/ lenny/updates main" > /etc/apt/sources.list.d/security.list

apt-get update

apt-get -y upgrade

apt-get -y install git-core libcrypt-ssleay-perl libwww-perl


useradd -m updatewatcher

