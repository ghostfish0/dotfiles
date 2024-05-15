#!/bin/sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec xbindkeys &
exec rm -f /tmp/.evrouter* &
exec evrouter /dev/input/event* &
exec xmodmap ~/.Xmodmap &
exec slstatus &
exec dwm 
