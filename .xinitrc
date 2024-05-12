#!/bin/sh
# loads xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec xbindkeys &
exec evrouter /dev/input/event* &
exec xmodmap -e "pointer = 1 0 3" &
exec slstatus &
exec dwm
