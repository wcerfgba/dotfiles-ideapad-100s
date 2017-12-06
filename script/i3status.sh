#!/bin/sh
# shell script to prepend i3status with more stuff

i3status | while :
do
    BAT=$(upower -i /org/freedesktop/UPower/devices/battery_axp288_fuel_gauge | awk 'BEGIN { OFS="|"; ORS=" "; }; /percentage/ { print $2 }; /time to empty/ { print $4"hrs" }; /state/ { print $2 }')
    read line
    echo "$BAT| $line" || exit 1
done

