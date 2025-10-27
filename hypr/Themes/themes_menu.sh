#!/bin/bash

# Theme list for selection
THEMES="<span font='Arial 20' color='#FFFFFF'><b>Random 🎲</b></span>\n<span font='Arial 20' color='#68f26d'><b>🌿 Default</b></span>\n<span font='Arial 20' color='#FFFF00'><b>⚡ Lightning</b></span>\n<span font='Arial 20' color='#00e5ff'><b>🌪️ Fog</b></span>\n<span font='Arial 20' color='#117DC3'><b>🌃 Night</b></span>"

# Theme selection via wofi
CHOICE=$(echo -e "$THEMES" | wofi --dmenu --p "Select theme:")

case "$CHOICE" in
  "<span font='Arial 20' color='#FFFFFF'><b>Random 🎲</b></span>")
    # Theme array
     RANDOM_CHOICE=$((RANDOM % 3))

    if [[ $RANDOM_CHOICE -eq 0 ]]; then
      ~/.config/hypr/Themes/defuld.sh
    elif [[ $RANDOM_CHOICE -eq 1 ]]; then
      ~/.config/hypr/Themes/Yellow.sh
    elif [[ $RANDOM_CHOICE -eq 2 ]]; then
      ~/.config/hypr/Themes/Yellow.sh
    else
      ~/.config/hypr/Themes/blue.sh
    fi
    ;;
  "<span font='Arial 20' color='#68f26d'><b>🌿 Default</b></span>")
    ~/.config/hypr/Themes/defuld.sh
    ;;
  "<span font='Arial 20' color='#FFFF00'><b>⚡ Lightning</b></span>")
    ~/.config/hypr/Themes/Yellow.sh
    ;;
  "<span font='Arial 20' color='#00e5ff'><b>🌪️ Fog</b></span>")
    ~/.config/hypr/Themes/blue.sh
    ;;
    "<span font='Arial 20' color='#117DC3'><b>🌃 Night</b></span>")
    ~/.config/hypr/Themes/Night.sh
    ;;
  
  *)
    echo "You did not select a theme or selected an invalid option."
    ;;
esac


