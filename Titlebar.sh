#!/bin/bash

(
while true; do
	xsetroot -name "| $(cat /sys/class/power_supply/BAT0/capacity)% - $(cat /sys/class/power_supply/BAT0/status) | vol: $(pamixer --get-mute > /dev/null && echo "muted ($(pamixer --get-volume)%)" || echo "$(pamixer --get-volume)%") | $(curl -s "wttr.in/?format=2&M" | tr -cd "a-zA-Z0-9°+.,/\- " | sed -e 's/^[ \t]*//') |  $(date +"%b %d - %H:%M")" 
	sleep 1
done
) &

