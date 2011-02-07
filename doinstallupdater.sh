#!/bin/bash

./enterchrootdo.sh configsystem.sh

cp installupdater.sh sys/home/updatewatcher
chmod +x sys/home/updatewatcher/installupdater.sh

./enterchrootdo.sh installupdater_script.sh
