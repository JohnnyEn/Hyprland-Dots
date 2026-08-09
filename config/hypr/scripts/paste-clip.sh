#!/usr/bin/env bash
# ~/.config/hypr/scripts/paste-clip.sh

alacritty --class fzf-clip -e bash -c '
  cliphist list | fzf -d $'"'"'\t'"'"' --with-nth 2 \
    --preview-window=top:50% \
    --preview "~/.config/hypr/scripts/fzf-cliphist-preview.sh {}" \
  | cliphist decode > /tmp/clip-selection
'

hyprctl dispatch focuswindow "address:$prev_win"
sleep 0.1

if [ -s /tmp/clip-selection ]; then
  entry="$(cat /tmp/clip-selection)"
  printf '%s' "$entry" | wl-copy   # keep it on the clipboard too, for normal Ctrl+V later
  sleep 0.15
  # wtype -M ctrl -s 50 -k v -s 50 -m ctrl
  wtype -M ctrl -k v -m ctrl
fi

rm -f /tmp/clip-selection
