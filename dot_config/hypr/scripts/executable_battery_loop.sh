#!/bin/bash

# === Config ===
plug_icon="🔌"
skull_icon="☠️"
arch_icon=""
hyperland="Hyperland"
nvim="Neovim"

while true; do
	# Battery check fallback
	if command -v acpi &>/dev/null; then
		battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')
	else
		battery_level=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null)
	fi

	# Skip if battery not found
	if ! [[ "$battery_level" =~ ^[0-9]+$ ]]; then
		sleep 120
		continue
	fi

	low_msgs=(
		"Bruh you're on $battery_level%. Save your Neovim work and run!"
		"Arch + Hyperland can't survive on fumes ☠️"
		"$nvim can't :w with 5% battery lol"
		"Hyperland is about to hypercrash — $battery_level% remaining!"
	)

	warn_msgs=(
		"You're at $battery_level%... Maybe find a charger? $plug_icon"
		"$arch_icon + $hyperland running on low juice"
		"$battery_level% — enough for one last rice tweak"
		"Plug in before $nvim rage quits!"
	)

	# Randomize
	rand() {
		local arr=("${@}")
		echo "${arr[RANDOM % ${#arr[@]}]}"
	}
	if [ "$battery_level" -lt 10 ]; then
		notify-send -u critical "Battery Low $skull_icon" "$(rand "${low_msgs[@]}")"
	elif [ "$battery_level" -lt 15 ]; then
		notify-send -u normal "Battery Warning $plug_icon" "$(rand "${warn_msgs[@]}")"
	fi

	sleep 120
done
