#!/bin/sh

# Load custom X resources (cursors, colors)
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Start the compositor for your "Glass" effects
picom --animations -b &

# Set the wallpaper
nitrogen --restore &

# Launch your "Pill" Polybar
~/.config/polybar/launch.sh &

# Finally, start i3
exec i3
