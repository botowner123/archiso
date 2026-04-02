#!/usr/bin/env bash

# 1. Terminate already running bar instances
killall -q polybar

# 2. Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# 3. Launch the bar (using the name of your bar from config.ini)
polybar mybar &
