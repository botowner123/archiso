#!/bin/sh

# 1. Load X resources (Fixes cursor size and terminal colors)
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# 2. Set the Wallpaper
# Note: Ensure the image is at airootfs/root/SmallMemory.jpg in your repo
feh --bg-fill /root/SmallMemory.jpg &

# 3. Start the Compositor (Crucial for Polybar transparency/blur)
# The -b flag runs it in the background
picom -b &

# 4. Launch the Polybar (The "Pill")
# This assumes your launch script is in the standard location
if [ -f ~/.config/polybar/launch.sh ]; then
    ~/.config/polybar/launch.sh &
fi

# 5. Network Manager Applet (Optional, for the Wi-Fi icon)
nm-applet &

# 6. Start the Window Manager
# This MUST be the last line and must use 'exec'
exec i3
