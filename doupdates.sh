#!/bin/bash

source ~/debiansys/vars.inc

./enterchrootdo.sh configsystem.sh "deb $REPO_SURL $RELEASE-updates main" "deb $REPO_SURL $RELEASE-security main"

