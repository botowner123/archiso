#!/bin/sh

# Set wallpaper
feh --bg-fill /root/SmallMemory.jpg &

# Start compositor for blur/transparency
picom -b &

# Launch the Polybar using your new script
~/.config/polybar/launch.sh &

# Network icon
nm-applet &

# Start i3 (Must be last)
exec i3
