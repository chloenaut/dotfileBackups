#!/usr/bin/env bash
IFS=$'\n\t'

# shutdown() {
# 	# Get our process group id
# 	pgroup=$(ps -o pgid= $$)

# 	# Kill it in a new new process group
# 	setsid kill -- -"${pgroup// /}"
# 	exit 0
# }
# trap "shutdown" SIGINT SIGTERM

pausedText=""
spotS=""
mpdS=""

function getStatus() {
	mpdS= echo "$(playerctl -p mpd status)"
	spotS= echo "$(playerctl -p spotifyd status)"
}

while true; do
	# requires playerctl>=2.0
	$HOME/.local/bin/i3blocks-mpris -c $HOME/.i3/i3blocks-mpris-spotifyd.json
	# no current players
	echo '<span foreground=#dc322f>⏹</span>'
	sleep 15
done &

# requires i3blocks@6e8b51d or later
while read -r button; do
	# shellcheck disable=1091
	case "$button" in
		1) playerctl play-pause ;;
		3) . sys-notif media ;;
		4) playerctl position "$seek+" ;;
		5) playerctl position "$seek-" ;;
	esac
done
