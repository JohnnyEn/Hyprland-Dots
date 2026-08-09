-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */
-- See https://wiki.hyprland.org/Configuring/Keywords/ for more variable settings
-- These configs are mostly for laptops. This is addendum to Keybinds.lua

local configDir = os.getenv("HOME") .. "/.config/hypr"
local scriptsDir = configDir .. "/scripts"

-- for disabling Touchpad. Run `hyprctl devices` to get device name.
local touchpadDevice = "synaptics-tm3471-030"
local touchpadEnabled = true

local externalTouchpad = "hid-05ac:0265-touchpad"  -- from hyprctl devices


-- Keyboard brightness
hl.bind("xf86KbdBrightnessDown", hl.dsp.exec_cmd(scriptsDir .. "/BrightnessKbd.sh --dec"), {
  repeating = true
}) -- decrease keyboard brightness
hl.bind("xf86KbdBrightnessUp", hl.dsp.exec_cmd(scriptsDir .. "/BrightnessKbd.sh --inc"), {
  repeating = true
}) -- increase keyboard brightness

-- Monitor brightness
hl.bind("xf86MonBrightnessDown", hl.dsp.exec_cmd(scriptsDir .. "/Brightness.sh --dec"), {
  repeating = true
}) -- decrease monitor brightness
hl.bind("xf86MonBrightnessUp",   hl.dsp.exec_cmd(scriptsDir .. "/Brightness.sh --inc"), {
  repeating = true
}) -- increase monitor brightness

-- Screenshot keybindings using F6 (no PrtSrc button)
hl.bind("SUPER + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --now"))   -- screenshot
hl.bind("SUPER + SHIFT + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --area"))  -- screenshot (area)
hl.bind("SUPER + CTRL + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --in5"))   -- screenshot (5 secs delay)
hl.bind("SUPER + ALT + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --in10"))  -- screenshot (10 secs delay)
hl.bind("ALT + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --active")) -- screenshot (active window only)

-- Touchpad device config
hl.device({
  name    = touchpadDevice,
  enabled = touchpadEnabled,
})

hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd(
  "hyprctl keyword device[" .. externalTouchpad .. "]:enabled true"
), { locked = true })
