-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */
-- For window rules and layerrules
-- See https://wiki.hyprland.org/Configuring/Window-Rules/ for more

-- This file is used to add or overwrite window rules
-- This file will not be modified during dotfiles updates

hl.window_rule({
    name = "batteryZenWindowrule",
    match = { class = "^(battery-zen)$" },
    float = true,
    center = true,
    size = "(monitor_w*0.90) (monitor_h*0.90)"
})

hl.window_rule({
    name = "wiremix",
    match = { class = "^(wiremix)$" },
    float = true,
    center = true,
    size = "(monitor_w*0.50) (monitor_h*0.50)"
})

hl.window_rule({
    name = "alacrittyWindowrule",
    match = { class = "Alacritty" },
    workspace = 1
})

hl.window_rule({
    name = "vscWindowrule",
    match = { class = "code" },
    workspace = 2
})

hl.window_rule({
    name = "novelWriterWindowrule",
    match = { class = "novelWriter" },
    workspace = 2
})

hl.window_rule({
    name = "vivaldiWindowrule",
    match = { class = "vivaldi-stable" },
    workspace = 3
})

hl.window_rule({
    name = "librewolfWindowrule",
    match = { class = "librewolf" },
    workspace = 3
})

hl.window_rule({
    name = "elementWindowrule",
    match = { class = "Element" },
    workspace = 4
})

hl.window_rule({
    name = "slackWindowrule",
    match = { class = "slack" },
    workspace = 4
})

hl.window_rule({
    name = "joplinWindowrule",
    match = { class = "@joplin/app-desktop" },
    workspace = 4
})

hl.window_rule({
    name = "feh",
    match = { class = "feh" },
    float = true
})

hl.window_rule({
    name = "musicControllerWindowrule",
    match = { class = "^(music-controller)$" },
    float = true,
    tile = false,
    center = true,
    stay_focused = true,
    size = "(monitor_w*0.45) (monitor_h*0.45)"
})

hl.window_rule({
    name = "desktopPortalWindowrule",
    match = { class = "^(xdg-desktop-portal-gtk)$" },
    float = true,
    tile = false,
    center = true,
    stay_focused = false,
    size = "(monitor_w*0.33) (monitor_h*0.33)"
})

-- fzf-clip script
hl.window_rule({
    name = "fzfclipWindowRule",
    match = { class = "^(fzf-clip)$" },
    float = true,
    pin = true,
    group = "fzfclipWindowRule",
    size = "(monitor_w*0.65) (monitor_h*0.65)"
})

hl.window_rule({
    name = "gimp",
    match = { class = "^(gimp)$" },
    float = true,
    group = "gimp",
    size = "(monitor_w*0.9) (monitor_h*0.9)"
})

hl.window_rule({
    name = "gimpExport",
    match = { class = "^(^file-[a-zA-Z0-9]+$)" },
    float = true,
    group = "gimpExport",
    size = "(monitor_w*0.5) (monitor_h*0.5)"
})

hl.window_rule({
    name = "wttrWeather",
    match = { class = "^(wttr-weather)$" },
    float = true,
    group = "wttrWeather",
    size = ("(monitor_w*0.75) (monitor_h*0.90)")
})

hl.window_rule({
	name = "floating_terminal",
	match = { class = "^(floating_term)" },
	float = true,
	center = true,
	size = ("(monitor_w*0.33) (monitor_h*0.33)")
})

hl.window_rule({
    match = { float = false },
    ["hyprbars:no_bar"] = true,
})
