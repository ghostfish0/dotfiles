#!/bin/sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec xbindkeys &
exec xmodmap ~/.Xmodmap &
exec slstatus &
exec dwm 
