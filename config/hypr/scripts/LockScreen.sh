#!/usr/bin/env bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##

# For Hyprlock
#pidof hyprlock || hyprlock -q

# Ensure weather cache is up-to-date before locking (Waybar/lockscreen readers)
# Commented since the lock session is with weather script a bit sluggish
# bash "$HOME/.config/hypr/UserScripts/WeatherWrap.sh" >/dev/null 2>&1

loginctl lock-session
