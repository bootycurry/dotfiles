#!/bin/bash
BR=$(brightnessctl g)
MAX=$(brightnessctl m)
PERC=$((100 * BR / MAX))

echo "󰃟  ${PERC}%"
