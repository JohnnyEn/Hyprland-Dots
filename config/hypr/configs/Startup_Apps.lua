local configDir = os.getenv("HOME") .. "/.config/hypr"
local configs = configDir .. "/configs"
local scriptsDir = configDir .. "/scripts"
local userScripts = configDir .. "/UserScripts"

hl.on("hyprland.start", function()
  hl.exec_cmd("awww-daemon --format xrgb")
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd(scriptsDir .. "/Polkit.sh")
  hl.exec_cmd("hyprctl setcursor 'BreezeX-Light' '30'")
  hl.exec_cmd("nm-applet --indicator")
  hl.exec_cmd("nm-tray")
  hl.exec_cmd("swaync")
  hl.exec_cmd("waybar")
  hl.exec_cmd("qs -c overview")
  hl.exec_cmd("hypridle")
  hl.exec_cmd(scriptsDir .. "/Hyprsunset.sh init")
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
  -- Portal may autostart. This is only for force purposes
  -- hl.exec_cmd("xdg-desktop-portal-hyprland")
  -- hl.exec_cmd(scriptsDir .. "/PortalHyprland.sh")
  hl.exec_cmd("blueman-applet")
  hl.exec_cmd(scriptsDir .. "/KeybindsLayoutInit.sh")
  hl.exec_cmd("protonvpn-app")
  -- hl.exec_cmd("hyprctl setcursor BreezeX-Light 30")
  hl.exec_cmd("/usr/lib/kdeconnectd &")
  hl.exec_cmd("sleep 5 && kdeconnect-indicator")
end)
