#!/bin/bash
VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | head -n 1)
MUTE=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

if [ "$MUTE" = "yes" ]; then
    echo " $VOL"
else
    echo " $VOL"
fi
