#!/usr/bin/env bash
#Dmenu colors
colorNB="$(xrdb -query -all | grep -E "\*\.color0:\s+#\d*" | cut -n -f2)"
colorSB="$(xrdb -query -all | grep -E "\*\.color1:\s+#\d*" | cut -n -f2)"
colorNF="$(xrdb -query -all | grep -E "\*\.color15:\s+#\d*" | cut -n -f2)"
colorSF="#ffffff"

selectedU="$(systemctl --user list-unit-files spotifyd.service --no-pager --no-legend)\n$(systemctl list-unit-files --no-pager --no-legend)"
selected=$(echo -e "${selectedU}" | dmenu -nb $colorNB -nf $colorNF -sb $colorSB -sf $colorSF -l 15 | awk '{print $1;}')
selected=$(echo $selected | awk '{print $1;}')
selectP=$( echo $selected | sed -e "s/\..*//g" )
user=""
if [[ -n $selected ]]; then
    action=$(echo -e "start\nstop\nrestart" | dmenu -nb $colorNB -nf $colorNF -sb $colorSB -sf $colorSF -l 4 )
    if [[ "$selectP" -eq 'spotifyd' ]]; then
        user="--user"
    fi
    case "$action" in
        "start")
            sudo systemctl $user start $selected
            ;;
        "stop")
            sudo systemctl $user stop $selected
            ;;
        "restart")
            sudo systemctl $user restart $selected
            ;;
    esac
fi
