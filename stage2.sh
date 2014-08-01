#!/bin/bash

source ~/debiansys/vars.inc

debootstrap --arch=$ARCH --unpack-tarball=$HOME/debiansys/TB.tgz --verbose $RELEASE sys
