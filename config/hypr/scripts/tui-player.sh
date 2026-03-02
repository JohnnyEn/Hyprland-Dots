#!/usr/bin/env bash

# --- Simple PlayerCTL TUI (stable, no scrolling/flicker) ---
# Controls:
#   j = Previous
#   k = Play/Pause
#   l = Next
#   q = Quit
#   TAB = Switch Player

declare -a players
current_index=0

update_players() {
    mapfile -t players < <(playerctl -l 2>/dev/null | awk NF)
}

format_time() {
    local sec=$1
    ((sec < 0)) && sec=0
    printf "%02d:%02d" $((sec/60)) $((sec%60))
}

get_metadata() {
    local player="$1"
    local artist title status pos dur remaining
    artist=$(playerctl -p "$player" metadata artist 2>/dev/null)
    title=$(playerctl -p "$player" metadata title 2>/dev/null)
    status=$(playerctl -p "$player" status 2>/dev/null)
    pos=$(playerctl -p "$player" position 2>/dev/null | cut -d. -f1)
    dur=$(playerctl -p "$player" metadata mpris:length 2>/dev/null)
    dur=$((dur / 1000000))
    [[ -z $dur || $dur -le 0 ]] && dur=0
    remaining=$((dur - pos))
    ((remaining < 0)) && remaining=0

    printf "%s - %s [%s]\n" "${artist:-Unknown Artist}" "${title:-Unknown Title}" "${status:-Stopped}"
    printf "%s / %s  (-%s)\n" "$(format_time "$pos")" "$(format_time "$dur")" "$(format_time "$remaining")"
}

draw_ui() {
    # Draw everything into a variable buffer (prevents partial screen prints)
    local buffer=""
    buffer+="─────────────────────────────────────────────────────────────────\n"
    buffer+="Controls: j=Prev | k=Play/Pause | l=Next | TAB=Switch | q=Quit\n"
    buffer+="─────────────────────────────────────────────────────────────────\n\n"

    for i in "${!players[@]}"; do
        if [[ $i -eq $current_index ]]; then
            buffer+="> ${players[$i]}\n"
        else
            buffer+="  ${players[$i]}\n"
        fi
        buffer+="$(get_metadata "${players[$i]}")\n\n"
    done

    # Move to top left, clear below, print full buffer once
    tput civis
    tput cup 0 0
    tput ed
    printf "%b" "$buffer"
    # Keep cursor at bottom (avoid scroll)
    tput cup $(tput lines) 0
}

main_loop() {
    local key
    while true; do
        draw_ui
        IFS= read -rsn1 -t 1 key
        case "$key" in
            $'\t')
                ((current_index = (current_index + 1) % ${#players[@]}))
                ;;
            j)
                playerctl -p "${players[$current_index]}" previous &>/dev/null
                ;;
            k)
                playerctl -p "${players[$current_index]}" play-pause &>/dev/null
                ;;
            l)
                playerctl -p "${players[$current_index]}" next &>/dev/null
                ;;
            q)
                tput cnorm
                clear
                echo "👋 Goodbye!"
                exit 0
                ;;
        esac
    done
}

update_players
if [ ${#players[@]} -eq 0 ]; then
    echo "No players found. Start Spotify, VLC, etc. and try again."
    exit 1
fi

clear
main_loop
