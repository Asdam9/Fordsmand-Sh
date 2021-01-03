#!/bin/bash

pgrep -x transmission-da >/dev/null || (transmission-daemon && notify-send "Starting Transmission Daemon" && sleep 3)

transmission-remote -a "$@" && notify-send "Transmission Daemon" "Torrent Added"

