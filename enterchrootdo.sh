#!/bin/bash

source enterchroot.inc

cp $1 sys/etc/runme
chmod +x sys/etc/runme

chroot sys /etc/runme

source exitchroot.inc

