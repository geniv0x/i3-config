#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR=HDMI-1 polybar main &
MONITOR=eDP-1 polybar secondary &
MONITOR=DP-1 polybar secondary &
