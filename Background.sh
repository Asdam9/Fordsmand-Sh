#!/bin/bash

exec >/dev/null
exec 2>/dev/null

Path=$1

[ -z $Path ] && Path=$(cat ~/.fehbg | tail -1 | awk '{print $4}' | xargs dirname)

(
while true; do
  feh --bg-fill --randomize $Path
  sleep 1h
done
) &
