#!/bin/bash

synclient TapButton1="1"
synclient TapButton2="2"
synclient TapButton3="3"

xset s off && xset -dpms

xbacklight -set 100%

numlockx on

# /usr/share/X11/xkb/symbols/group
setxkbmap -model evdev -layout 'us,ru' -option -option 'grp:lctrl_rctrl_switch,grp:lswitch'

#ibus-daemon &
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
