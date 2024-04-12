#!/bin/sh
# loads xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec xbindkeys &
exec slstatus &
exec dwm
