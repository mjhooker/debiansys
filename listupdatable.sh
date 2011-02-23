#!/bin/bash

LANG=C
export LANG
cd /home/updatewatcher/updater
su -c "git pull http://github.com/mjhooker/updatewatcher.git updater" updatewatcher
su -c /home/updatewatcher/updater/listupdatable.pl.sh updatewatcher
