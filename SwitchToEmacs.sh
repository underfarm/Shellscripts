#!/usr/bin/env bash
if WIDS=$(xdotool search --name 'Emacs'); then
  for WID in $WIDS
  do
    if $(xwininfo -id $WID | grep -q IsViewable) 
    then
        xdotool windowactivate "${WID}" mousemove --window "${WID}" 50 50 
        break
    fi
  done
else
    notify-send "Emacs is not running" 
fi

