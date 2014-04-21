#!/bin/bash

synclient TapButton1="1"
synclient TapButton2="2"
synclient TapButton3="3"
synclient TouchpadOff="1"

hdmi=`xrandr | grep HDMI1 | grep disconnected`

xset s off && xset -dpms

if test x"$hdmi" = x ; then
    xrandr --output LVDS1 --mode 1920x1080 --pos 1920x300 --output HDMI1 --rotate normal --mode 1920x1200 --pos 0x0
fi

feh --bg-scale /home/deviator/Pictures/bg.png

xbacklight -set 60%

numlockx on

dropbox start

#bluetooth-applet &
nm-applet &
#gnome-sound-applet &

# /usr/share/X11/xkb/symbols/group
setxkbmap -model evdev -layout 'us,ru' -option -option 'grp:lctrl_rctrl_switch,grp:lswitch'

#ibus-daemon &
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
