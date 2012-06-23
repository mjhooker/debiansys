#!/bin/bash

source ~/debiansys/vars.inc

debootstrap --unpack-tarball=$HOME/debiansys/TB.tgz --verbose $RELEASE sys
