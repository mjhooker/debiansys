#!/bin/bash

debootstrap --unpack-tarball=/home/mjhooker/armroot/debiansys/TB.tgz --arch=armel --foreign --verbose natty sys

cp /usr/bin/qemu-arm-static /home/mjhooker/armroot/debiansys/sys/usr/bin/
