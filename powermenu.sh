#!/usr/bin/env bash

chosen=$(printf "⏻ Shutdown\n Reboot\n Lock\n⏾ Suspend\n Logout" | rofi -dmenu -p "Power" -theme ~/.config/rofi/config.rasi)

case "$chosen" in
    "⏻ Shutdown") systemctl poweroff ;;
    " Reboot") systemctl reboot ;;
    " Lock") i3lock -c 1e1e2e ;;
    "⏾ Suspend") systemctl suspend ;;
    " Logout") i3-msg exit ;;
esac
