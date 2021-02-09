#!/bin/bash

(
while true; do
    xsetroot -name "| YT↓ : $( ls ~/Videos/downloadedYT/ | grep part | wc -l) | $(xbacklight | cut -f '1' -d '.')% | $(cat /sys/class/power_supply/BAT0/capacity)% - $(cat /sys/class/power_supply/BAT0/status) | vol: $(pamixer --get-mute > /dev/null && echo "muted ($(pamixer --get-volume)%)" || echo "$(pamixer --get-volume)%") | $(cat ~/Documents/Scripts/Fordsmand-Sh/weather.txt) | $(date +"%b %d - %H:%M:%S")" 
    sleep 0.01
done
) &

