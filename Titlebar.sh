#!/bin/bash

(
while true; do
    xsetroot -name " | 🔊$(pamixer --get-volume)% | $(curl -s "wttr.in/?format=2&M" | tr -cd "a-zA-Z0-9°+.,/\- " | sed -e 's/^[ \t]*//' | awk '{print "🔥 " $1 " 💨 " $2}') | 🕒 $(date +"%b %d - %H:%M")"
    sleep 10
done
) &

