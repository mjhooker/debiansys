#!/bin/bash

LANG=C
export LANG
cd /home/updatewatcher/updater
su -c /home/updatewatcher/updater/listupdatable.pl.sh updatewatcher
