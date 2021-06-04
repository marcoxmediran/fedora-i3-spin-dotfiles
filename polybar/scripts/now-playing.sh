#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo "%{T8}%{T-}  $(playerctl metadata title) - $(playerctl metadata artist | sed 's/ - Topic//')"
elif [ "$player_status" = "Paused" ]; then
    echo "%{T8}%{T-}  $(playerctl metadata title) - $(playerctl metadata artist | sed 's/ - Topic//')"
else
    echo "%{T8}%{T-} No music playing"
fi

