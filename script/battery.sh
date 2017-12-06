#!/bin/sh
upower -i /org/freedesktop/UPower/devices/battery_axp288_fuel_gauge | awk 'BEGIN { OFS="|"; ORS=" "; }; /percentage/ { print $2 }; /time to empty/ { print $4"hrs" }; /state/ { print $2 }'
