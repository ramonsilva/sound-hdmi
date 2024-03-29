#!/bin/bash

USER=$(/usr/bin/who | /usr/bin/cut -f1 -d" ")

TEST=$(cat /sys/class/drm/card0-HDMI-A-1/status)

if [ $TEST = connected ]; then
  su $USER -c "env DISPLAY=:0.0 notify-send -u normal -t 500 -i gnome-sound-properties \"HDMI On\" \"Sound to HDMI\""

  su $USER -c "pacmd \"set-card-profile 0 output:hdmi-stereo\" > /dev/null 2>&1"

else
  su $USER -c "env DISPLAY=:0.0 notify-send -u normal -t 500 -i gnome-sound-properties \"HDMI Off\" \"Sound to Internal\""

  su $USER -c "pacmd \"set-card-profile 0 output:analog-stereo\" > /dev/null 2>&1"

fi
