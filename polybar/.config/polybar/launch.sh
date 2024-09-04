#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Get network Interface
DEFAULT_NETWORK_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)

## Load bar on primary monitor
#polybar -c ~/.config/polybar/config.ini main &


if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main &
  done
else
  polybar --reload main &
fi

## Load on second monitor if connected
#external_monitor=$(xrandr --query | grep 'HDMI-A-0')
#if [[ $external_monitor = HDMI-A-0\ connected* ]]; then
#	polybar -c ~/.config/polybar/config.ini secondary &
#fi
