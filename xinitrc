#!/bin/bash
#xinitrc

# Nitrogen Wallpaper
nitrogen --restore &

# Monitors, keyboard and network
if [ $(xrandr | grep HDMI | grep connected | wc -l) -eq 2 ]
then

sleep 2
# Position
xrandr --output HDMI2 --left-of HDMI1
# Resolution
xrandr --output HDMI1 --mode 1920x1080
xrandr --output HDMI2 --mode 1920x1080
# Wallpaper
nitrogen --set-zoom-fill --head=1 /home/revil/Imágenes/wallpaper25.jpg
nitrogen --set-zoom-fill --head=2 /home/revil/Imágenes/wallpaper18.jpg
# Keyboard fix
setxkbmap es
# Connect to local network
#sudo netctl start wlp2s0-Bel &

fi


# Tint2 Toolbar
tint2 &

# Terminator Opacity
xcompmgr &

exec openbox-session
