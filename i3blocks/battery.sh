#!/bin/bash

# Automatically detect battery (BAT0, BAT1, etc.)
BAT=$(ls /sys/class/power_supply | grep BAT | head -n 1)

CAPACITY=$(cat /sys/class/power_supply/$BAT/capacity)
STATUS=$(cat /sys/class/power_supply/$BAT/status)

# Choose icon
if [ "$STATUS" = "Full" ]; then
    ICON="󰁹"
else
    if   [ "$CAPACITY" -ge 80 ]; then ICON="󰂁"
    elif [ "$CAPACITY" -ge 50 ]; then ICON="󰁾"
    elif [ "$CAPACITY" -ge 20 ]; then ICON="󰁻"
    else ICON="󰂃"
    fi
fi

echo "$ICON $CAPACITY%"
