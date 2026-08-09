#!/usr/bin/env bash

state_param=$1

if [ "$state_param" = "on" ]; then
  pactl set-card-profile bluez_card.00_A4_1C_A9_8B_5A headset-head-unit && notify-send -u normal 'Headphones' 'Headset mode ON' --hint=boolean:transient:true
  exit 0
else
  pactl set-card-profile bluez_card.00_A4_1C_A9_8B_5A a2dp-sink && notify-send -u normal 'Headphones' 'Headset mode OFF' --hint=boolean:transient:true
  exit 0
fi
