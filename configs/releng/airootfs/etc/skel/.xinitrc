#!/bin/sh

# 1. Set the Wallpaper
# We use & to run this in the background so the script keeps moving
feh --bg-fill /root/SmallMemory.jpg &

# 2. Start the Compositor
# picom -b runs it in 'daemon' mode (background) automatically
picom -b &

# 3. Launch the Polybar "Pill"
# We call the script you just created. 
# The & is vital here so i3 can start immediately after.
~/.config/polybar/launch.sh &

# 4. Network Manager Applet
# Shows your Wi-Fi/Ethernet icon in the system tray
nm-applet &

# 5. Start the Window Manager
# 'exec' means this is the final process. 
# Do NOT put an & after 'exec i3'.
exec i3
