#!/bin/bash


LANG=C
export LANG

echo $1 > /etc/apt/sources.list.d/security.list
echo $2 >> /etc/apt/sources.list.d/security.list

apt-get update

apt-get -y upgrade


