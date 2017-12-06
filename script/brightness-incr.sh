#!/bin/sh
INCREMENT=$1
BRIGHTNESS_PATH='/sys/class/backlight/intel_backlight/brightness'
BRIGHTNESS=`cat $BRIGHTNESS_PATH`
echo $(expr $BRIGHTNESS + $INCREMENT) | sudo tee $BRIGHTNESS_PATH
