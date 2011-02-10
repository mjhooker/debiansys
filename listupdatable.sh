#!/bin/bash

LANG=C
export LANG
cd /home/updatewatcher/updater
su -c "git checkout -q origin/updater" updatewatcher
su -c /home/updatewatcher/updater/listupdatable.pl.sh updatewatcher
