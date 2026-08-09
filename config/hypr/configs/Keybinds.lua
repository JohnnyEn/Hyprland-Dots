local configDir = os.getenv("HOME") .. "/.config/hypr"
local scriptsDir = configDir .. "/scripts"
local configs = configDir .. "/configs"
local userConfigs = configDir .. "/UserConfigs"
local userScripts = configDir .. "/UserScripts"
local userDefaults = require("UserConfigs.01-UserDefaults")

local terminal = "alacritty"
local files = "thunar"

-- STANDARD config
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("pkill rofi || true && rofi -show drun -modi drun,calc,window"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("xdg-open https://"))
hl.bind("SUPER + A", hl.dsp.exec_cmd(scriptsDir .. "/OverviewToggle.sh"))
hl.bind("SUPER + Return", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + E", hl.plugin.gloview.toggle)
hl.bind("SUPER + CTRL + E", hl.plugin.gloview.desktop)
hl.bind("SUPER + SHIFT + E", hl.plugin.gloview.allworkspaces)
-- Weather app
hl.bind(
	"SUPER + CTRL + P",
	hl.dsp.exec_cmd("alacritty --class wttr-weather -e ~/.config/hypr/UserScripts/WeatherWttr.sh")
)
hl.bind(
	"SUPER + O",
	hl.dsp.exec_cmd(
		"alacritty --class music-controller --title 'Music Controller' -e ~/.config/hypr/scripts/tui-player.sh"
	)
)
--hl.bind(
--  "SUPER + SHIFT + V",
--  hl.dsp.exec_cmd(
--    [[alacritty --class fzf-clip -e bash -c "cliphist list | fzf -d $'\t' --with-nth 2 --preview-window=top:50% --preview '~/.config/hypr/scripts/fzf-cliphist-preview.sh {}' | cliphist decode | wl-copy && wtype -M ctrl -M shift -k v -m ctrl -m shift"]]
--  )
--)
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("~/.config/hypr/scripts/paste-clip.sh"))
hl.bind("SUPER + SHIFT + M", hl.dsp.exec_cmd("alacritty --class wiremix -e wiremix"))

-- FEATURES / EXTRAS
hl.bind("SUPER + T", hl.dsp.exec_cmd(scriptsDir .. "/ThemeChanger.sh"))
hl.bind("SUPER + H", hl.dsp.exec_cmd(scriptsDir .. "/KeyHints.sh"))
hl.bind("SUPER + ALT + R", hl.dsp.exec_cmd(scriptsDir .. "/Refresh.sh"))
hl.bind("SUPER + ALT + E", hl.dsp.exec_cmd(scriptsDir .. "/RofiEmoji.sh"))
hl.bind("SUPER + S", hl.dsp.exec_cmd(scriptsDir .. "/RoftSearch.sh"))
hl.bind("SUPER + CTRL + S", hl.dsp.exec_cmd("rofi -show window"))
hl.bind("SUPER + ALT + O", hl.dsp.exec_cmd(scriptsDir .. "/ChangeBlur.sh"))
hl.bind("SUPER + SHIFT + G", hl.dsp.exec_cmd(scriptsDir .. "/GameMode.sh"))
hl.bind("SUPER + ALT + L", hl.dsp.exec_cmd(scriptsDir .. "/ChangeLayout.sh"))
hl.bind("SUPER + ALT + V", hl.dsp.exec_cmd(scriptsDir .. "/ClipManager.sh"))
hl.bind("SUPER + CTRL + R", hl.dsp.exec_cmd(scriptsDir .. "/RofiThemeSelector.sh"))
hl.bind(
	"SUPER + CTRL + SHIFT + R",
	hl.dsp.exec_cmd("pkill rofi || true && " .. scriptsDir .. "/RofiThemeSelector-modified.sh")
)
hl.bind("SUPER + CTRL + SHIFT + T", hl.dsp.exec_cmd("alacritty --class floating_term"))
hl.bind("SUPER + SHIFT + CTRL + I", hl.dsp.exec_cmd(userScripts .. "/HeadphonesMode.sh on"))
hl.bind("SUPER + SHIFT + CTRL + U", hl.dsp.exec_cmd(userScripts .. "/HeadphonesMode.sh off"))

-- Window actions
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen("maximized"))
hl.bind("SUPER + CTRL + F", hl.dsp.window.fullscreen("fullscreen"))
hl.bind("SUPER + V", hl.dsp.window.float())
hl.bind("SUPER + ALT + SPACE", hl.dsp.exec_cmd("hyprctl dispatch workspaceopt allfloat"))
hl.bind("SUPER + SHIFT + Return", hl.dsp.exec_cmd(scriptsDir .. "/Dropterminal.sh alacritty"))

-- Waybar related bindings
hl.bind("SUPER + CTRL + ALT + B", hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))
hl.bind("SUPER + CTRL + B", hl.dsp.exec_cmd(scriptsDir .. "/WaybarStyles.sh"))
hl.bind("SUPER + ALT + B", hl.dsp.exec_cmd(scriptsDir .. "/WaybarLayout.sh"))

-- Hyprsunset
hl.bind("SUPER + N", hl.dsp.exec_cmd(scriptsDir .. "/Hyprsunset.sh toggle"))

-- Features / Extras
hl.bind("SUPER + SHIFT + ALT + M", hl.dsp.exec_cmd(userScripts .. "/RofiBeats.sh"))
hl.bind("SUPER + ALT + W", hl.dsp.exec_cmd(userScripts .. "/WallpaperSelect.sh"))
hl.bind("SUPER + ALT + SHIFT + W", hl.dsp.exec_cmd(userScripts .. "/WallpaperEffects.sh"))
hl.bind("SUPER + CTRL + ALT + W", hl.dsp.exec_cmd(userScripts .. "/WallpaperRandom.sh"))
hl.bind("SUPER + CTRL + O", hl.dsp.window.set_prop({ prop = "opaque", value = "toggle" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.exec_cmd(scriptsDir .. "/KeyBinds.sh"))
hl.bind("SUPER + SHIFT + A", hl.dsp.exec_cmd(scriptsDir .. "/Animations.sh"))
hl.bind("SUPER + SHIFT + O", hl.dsp.exec_cmd(userScripts .. "/ZshChangeTheme.sh"))
hl.bind("ALT + SHIFT + L", hl.dsp.exec_cmd(scriptsDir .. "/KeyboardLayout.sh switch"))
hl.bind("ALT + SHIFT + K", hl.dsp.exec_cmd(scriptsDir .. "/Tak0-Per-Window-Switch.sh"))
hl.bind("SUPER + ALT + C", hl.dsp.exec_cmd(userScripts .. "/RofiCalc.sh"))

-- Move current workspaces to monitors
hl.bind("SUPER + CTRL + F9", hl.dsp.workspace.move({ monitor = "l" }))
hl.bind("SUPER + CTRL + F10", hl.dsp.workspace.move({ monitor = "r" }))
hl.bind("SUPER + CTRL + F11", hl.dsp.workspace.move({ monitor = "u" }))
hl.bind("SUPER + CTRL + F12", hl.dsp.workspace.move({ monitor = "d" }))

-- System
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("hyprctl dispatch exit 0"))
hl.bind("SUPER + W", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd(scriptsDir .. "/KillActiveProcess.sh"))
hl.bind("SUPER + L", hl.dsp.exec_cmd(scriptsDir .. "/LockScreen.sh"))
hl.bind("CTRL + ALT + P", hl.dsp.exec_cmd(scriptsDir .. "/Wlogout.sh"))
hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind("SUPER + SHIFT + CTRL + E", hl.dsp.exec_cmd(scriptsDir .. "/Kool_Quick_Settings.sh"))

-- Master Layout
hl.bind("SUPER + CTRL + D", hl.dsp.layout("removemaster"))
hl.bind("SUPER + I", hl.dsp.layout("addmaster"))
-- NOTE: J/K bindings are set dynamically by scripts/KeybindsLayoutInit.sh and scripts/ChangeLayout.sh
-- (we intentionally do not bind them statically here to avoid conflicts across layouts)
-- hl.bind("SUPER + J", hl.layout.layoutmsg.cyclenext())
-- hl.bind("SUPER + K", hl.layout.layoutmsg.cycleprev())
hl.bind("SUPER + CTRL + Return", hl.dsp.layout("swapwithmaster"))

-- Works on either layout (Master + Dwindle altogether)
hl.bind("SUPER + M", hl.dsp.exec_cmd("hyprctl dispatch splitratio 0.3"))

-- Layout aware keybinds
hl.on("hyprland.start", function()
	hl.exec_cmd(scriptsDir .. "/ChangeLayout.sh init")
end)

-- Special hotkeys
hl.bind("xf86audioraisevolume", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --inc"), {
	repeating = true,
	locked = true,
})
hl.bind("xf86audiolowervolume", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --dec"), {
	repeating = true,
	locked = true,
})
hl.bind("ALT + xf86audioraisevolume", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --inc-precise"), {
	repeating = true,
	locked = true,
})
hl.bind("ALT + xf86audiolowervolume", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --dec-precise"), {
	repeating = true,
	locked = true,
})
hl.bind("xf86AudioMicMute", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --toggle-mic"), {
	locked = true,
})
hl.bind("xf86audiomute", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --toggle"), {
	locked = true,
})
hl.bind("xf86Sleep", hl.dsp.exec_cmd("systemctl suspend"), {
	locked = true,
})
hl.bind("xf86Rfkill", hl.dsp.exec_cmd(scriptsDir .. "/AirplaneMode.sh"), {
	locked = true,
})

-- Media keys using keyboards
hl.bind("xf86audiopause", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --pause"), {
	locked = true,
})
hl.bind("xf86AudioPlay", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --pause"), {
	locked = true,
})
hl.bind("xf86audionext", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --nxt"), {
	locked = true,
})
hl.bind("xf86audioprev", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --prv"), {
	locked = true,
})
hl.bind("xf86audiostop", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --stop"), {
	locked = true,
})

-- Screenshot keybindings NOTE: You may need to press Fn key as well
hl.bind("SUPER + Print", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --now"))
hl.bind("SUPER + CTRL + SHIFT + S", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --area"))
hl.bind("SUPER + CTRL + Print", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --in5"))
hl.bind("SUPER + CTRL + SHIFT + Print", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --in10"))
hl.bind("ALT + Print", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --active"))

-- screenshot with swappy (another screenshot tool)
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --swappy"))

-- Resize windows
hl.bind("SUPER + SHIFT + left", hl.dsp.window.resize({ x = -50, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -50, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 50, relative = true }), { repeating = true })

-- Move windows
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

-- Swap windows
-- hl.bind("SUPER + SHIFT + CTRL + left",  hl.dsp.window.swap({ direction = "left" }))
-- hl.bind("SUPER + SHIFT + CTRL + right", hl.dsp.window.swap({ direction = "right" }))
-- hl.bind("SUPER + SHIFT + CTRL + up",    hl.dsp.window.swap({ direction = "up" }))
-- hl.bind("SUPER + SHIFT + CTRL + down",  hl.dsp.window.swap({ direction = "down" }))

-- group
hl.bind("SUPER + G", hl.dsp.group.toggle())

-- Navigate within a group
hl.bind("SUPER + Tab", hl.dsp.group.next())
hl.bind("SUPER + SHIFT + Tab", hl.dsp.group.prev())

-- Move window into/out of group
hl.bind("SUPER + CTRL + K", hl.dsp.group.move_window({ forward = true }))
hl.bind("SUPER + CTRL + L", hl.dsp.group.move_window({ forward = false }))

--  Move focus with mainMod + arrow keys
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with SUPER + [0-9]
for i = 1, 10 do
	local key = "code:" .. (9 + i) -- code:10 = key 1 ... code:19 = key 0
	hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
end

-- Move active window and follow to workspace SUPER + SHIFT + [0-9]
for i = 1, 10 do
	local key = "code:" .. (9 + i)
	hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = true }))
end

-- Scroll through existing workspaces with SUPER + scroll / period / comma
hl.bind("SUPER + mouse_down", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + C", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + comma", hl.dsp.focus({ direction = "right" }))

-- Move/resize windows with SUPER + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true }) -- left click
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true }) -- right click
