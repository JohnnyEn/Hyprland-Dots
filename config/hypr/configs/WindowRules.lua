-- Browsers
hl.window_rule({
    name = "Firefox",
    match = {
        class = "^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr|[Ff]irefox-bin)$"
    },
    tag = "+browser"
})

hl.window_rule({
    name = "Chrome",
    match = {
        class = "^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$"
    },
    tag = "+browser"
})

hl.window_rule({
    name = "Chrome default",
    match = {
        class = "^(chrome-.+-Default)$"
    },
    tag = "+browser"
})

hl.window_rule({
    name = "Chromium",
    match = {
        class = "^([Cc]hromium)$"
    },
    tag = "+browser"
})

hl.window_rule({
    name = "MS Edge",
    match = {
        class = "^([Mm]icrosoft-edge(-stable|-beta|-dev|-unstable))$"
    },
    tag = "+browser"
})

hl.window_rule({
    name = "Brave browser",
    match = {
        class = "^(Brave-browser(-beta|-dev|-unstable)?)$"
    },
    tag = "+browser"
})

hl.window_rule({
    name = "Chrome default",
    match = {
        class = "^([Tt]horium-browser|[Cc]achy-browser)$"
    },
    tag = "+browser"
})

hl.window_rule({
    name = "Chrome default",
    match = {
        class = "^(zen-alpha|zen)$"
    },
    tag = "+browser"
})

-- notif tags
hl.window_rule({
    name = "Notifications tags",
    match = {
        class = "^(swaync-control-center|swaync-notification-window|swaync-client|class)$"
    },
    tag = "+notif"
})

-- KooL settings tag
hl.window_rule({
    name = "Kool cheatsheet",
    match = {
        class = "^(KooL Quick Cheat Sheet)$"
    },
    tag = "+KooL_Cheat"
})

hl.window_rule({
    name = "Kool settings",
    match = {
        class = "^(KooL Hyprland Settings)$"
    },
    tag = "+KooL_Settings"
})

hl.window_rule({
    name = "Kool settings nwg look",
    match = {
        class = "^(nwg-displays|nwg-look)$"
    },
    tag = "+KooL-Settings"
})

-- terminal tags
hl.window_rule({
    name = "Terminal",
    match = {
        class = "^(Alacritty|kitty|kitty-dropterm)$"
    },
    tag = "+terminal"
})

-- email tags
hl.window_rule({
    name = "Thunderbird",
    match = {
        class = "^([Tt]hunderbird|org.mozilla.Thunderbird)$"
    },
    tag = "+email"
})

hl.window_rule({
    name = "Betterbird",
    match = {
        class = "^(eu.betterbird.Betterbird)$"
    },
    tag = "+email"
})

hl.window_rule({
    name = "Evolution",
    match = {
        class = "^(org.gnome.Evolution)$"
    },
    tag = "+email"
})

-- project tags
hl.window_rule({
    name = "Codium",
    match = {
        class = "^(codium|codium-url-handler|VSCodium)$"
    },
    tag = "+projects"
})

hl.window_rule({
    name = "VSCode",
    match = {
        class = "^(VSCode|code|code-url-handler)$"
    },
    tag = "+projects"
})

hl.window_rule({
    name = "JetBrains",
    match = {
        class = "^(jetbrains-.+)$"
    },
    tag = "+projects"
})

hl.window_rule({
    name = "Zed",
    match = {
        class = "^(dev.zed.Zed|antigravity)$"
    },
    tag = "+projects"
})

-- screenshare tags
hl.window_rule({
    name = "Screenshare",
    match = {
        class = "^(com.obsproject.Studio)$"
    },
    tag = "+screenshare"
})

-- IM tags
hl.window_rule({
    name = "Discord",
    match = {
        class = "^([Dd]iscord|[Ww]ebCord|[Vv]esktop)$"
    },
    tag = "+im"
})

hl.window_rule({
    name = "Ferdium",
    match = {
        class = "^([Ff]erdium)$"
    },
    tag = "+im"
})

hl.window_rule({
    name = "Whatsapp",
    match = {
        class = "^([Ww]hatsapp-for-linux)$"
    },
    tag = "+im"
})

hl.window_rule({
    name = "Telegram",
    match = {
        class = "^(org.telegram.desktop|io.github.tdesktop_x64.TDesktop)$"
    },
    tag = "+im"
})

hl.window_rule({
    name = "Teams",
    match = {
        class = "^(teams-for-linux)$"
    },
    tag = "+im"
})

hl.window_rule({
    name = "Riot",
    match = {
        class = "^(im.riot.Riot|Element)$"
    },
    tag = "+im"
})

-- game tags
hl.window_rule({
    name = "Gamescope",
    match = {
        class = "^(gamescope)$"
    },
    tag = "+games"
})

hl.window_rule({
    name = "Steam",
    match = {
        class = "^(steam_app_\\d+)$"
    },
    tag = "+games"
})

-- gamestore tags
hl.window_rule({
    name = "Steam store",
    match = {
        class = "^([Ss]team)$"
    },
    tag = "+gamestore"
})

hl.window_rule({
    name = "Lutris",
    match = {
        class = "^([Ll]utris)$"
    },
    tag = "+gamestore"
})

hl.window_rule({
    name = "Heroic games launcher",
    match = {
        class = "^(com.heroicgameslauncher.hgl)$"
    },
    tag = "+gamestore"
})

-- file-manager tags
hl.window_rule({
    name = "Thunar",
    match = {
        class = "^([Tt]hunar|org.gnome.Nautilus|[Pp]cmanfm-qt)$"
    },
    tag = "+file-manager"
})

hl.window_rule({
    name = "Warp",
    match = {
        class = "^(app.drey.Warp)$"
    },
    tag = "+file-manager"
})

-- wallpaper tags
hl.window_rule({
    name = "Waytrogen",
    match = {
        class = "^([Ww]aytrogen)$"
    },
    tag = "+wallpaper"
})

-- multimedia tags
hl.window_rule({
    name = "Audacious",
    match = {
        class = "^([Aa]udacious)$"
    },
    tag = "+multimedia"
})

-- multimedia-video tags
hl.window_rule({
    name = "Video players",
    match = {
        class = "^([Mm]pv|vlc)$"
    },
    tag = "+multimedia_video"
})

-- settings tags
hl.window_rule({
    name = "ROG Control settings",
    match = { title = "^(ROG Control)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "wihotspot settings",
    match = { class = "^(wihotspot(-gui)?)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "Baobab settings",
    match = { class = "^([Bb]aobab|org.gnome.[Bb]aobab)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "gnome-disks settings",
    match = { class = "^(gnome-disks|wihotspot(-gui)?)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "Kvantum Manager settings",
    match = { title = "(Kvantum Manager)" },
    tag = "+settings"
})

hl.window_rule({
    name = "file-roller settings",
    match = { class = "^(file-roller|org.gnome.FileRoller)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "Network/Bluetooth settings",
    match = { class = "^(nm-applet|nm-connection-editor|blueman-manager)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "PipeWire/PulseAudio settings",
    match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "qt5ct/qt6ct settings",
    match = { class = "^(qt5ct|qt6ct)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "xdg-desktop-portal settings",
    match = { class = "(xdg-desktop-portal-gtk)" },
    tag = "+settings"
})

hl.window_rule({
    name = "polkit settings",
    match = { class = "^(org.kde.polkit-kde-authentication-agent-1)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "Rofi settings",
    match = { class = "^([Rr]ofi)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "btrfs-assistant settings",
    match = { class = "^(btrfs-assistant)$" },
    tag = "+settings"
})

hl.window_rule({
    name = "timeshift-gtk settings",
    match = { class = "^(timeshift-gtk)$" },
    tag = "+settings"
})

-- viewer tags
hl.window_rule({
    name = "System monitors viewer",
    match = { class = "^(gnome-system-monitor|org.gnome.SystemMonitor|io.missioncenter.MissionCenter)$" },
    tag = "+viewer"
})

hl.window_rule({
    name = "Evince viewer",
    match = { class = "^(evince)$" },
    tag = "+viewer"
})

hl.window_rule({
    name = "Image viewers",
    match = { class = "^(eog|org.gnome.Loupe)$" },
    tag = "+viewer"
})

-- Some special override rules
hl.window_rule({
    name = "Multimedia video no blur",
    match = { tag = "multimedia_video" },
    no_blur = true,
    opacity = "1.0"
})

hl.window_rule({
    name = "Multimedia no blur",
    match = { tag = "multimedia" },
    no_blur = true,
    opacity = "1.0"
})

-- POSITION
hl.window_rule({
    name = "KooL Cheat center",
    match = { tag = "KooL_Cheat" },
    center = true
})

hl.window_rule({
    name = "KooL Settings center",
    match = { tag = "KooL-Settings" },
    center = true
})

hl.window_rule({
    name = "ROG Control center",
    match = { title = "^(ROG Control)$" },
    center = true
})

hl.window_rule({
    name = "Keybindings center",
    match = { title = "^(Keybindings)$" },
    center = true
})

hl.window_rule({
    name = "pavucontrol center",
    match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$" },
    center = true
})

hl.window_rule({
    name = "Ferdium center",
    match = { class = "^([Ff]erdium)$" },
    center = true
})

-- windowrule to avoid idle for fullscreen apps
hl.window_rule({
    name = "Idle inhibit fullscreen",
    match = { fullscreen = true },
    idle_inhibit = "fullscreen"
})

hl.window_rule({
    name = "Idle inhibit fullscreen (class wildcard)",
    match = { class = "^(*)$" },
    idle_inhibit = "fullscreen"
})

hl.window_rule({
    name = "Idle inhibit fullscreen (title wildcard)",
    match = { title = "^(*)$" },
    idle_inhibit = "fullscreen"
})

-- FLOAT
hl.window_rule({
    name = "KooL Cheat float",
    match = { tag = "KooL_Cheat" },
    float = true
})

hl.window_rule({
    name = "Wallpaper float",
    match = { tag = "wallpaper" },
    float = true,
    center = true
})

hl.window_rule({
    name = "Settings float",
    match = { tag = "settings" },
    float = true,
    center = true
})

hl.window_rule({
    name = "Viewer float",
    match = { tag = "viewer" },
    float = true,
    center = true
})

hl.window_rule({
    name = "KooL Settings float",
    match = { tag = "KooL-Settings" },
    float = true,
    center = true
})

hl.window_rule({
    name = "Zoom/OneDriver float",
    match = { class = "([Zz]oom|onedriver|onedriver-launcher)" },
    float = true
})

hl.window_rule({
    name = "Calculator float",
    match = { class = "(org.gnome.Calculator|qalculate-gtk)" },
    float = true
})

hl.window_rule({
    name = "mpv/Clapper float",
    match = { class = "^(mpv|com.github.rafostar.Clapper)$" },
    float = true
})

hl.window_rule({
    name = "Qalculate float",
    match = { class = "^([Qq]alculate-gtk)$" },
    float = true
})

hl.window_rule({
    name = "Ferdium float",
    match = { class = "^([Ff]erdium)$" },
    float = true
})

-- popups and dialogues
hl.window_rule({
    name = "Authentication Required float",
    match = { title = "^(Authentication Required)$" },
    float = true,
    center = true
})

hl.window_rule({
    name = "Codium popup float",
    match = {
        class = "(codium|codium-url-handler|VSCodium)",
    },
    float = true
})

hl.window_rule({
    name = "Heroic popup float",
    match = {
        class = "^(com.heroicgameslauncher.hgl)$",
    },
    float = true
})

hl.window_rule({
    name = "Steam popup float",
    match = {
        class = "^([Ss]team)$",
    },
    float = true
})

hl.window_rule({
    name = "Add Folder to Workspace float",
    match = { title = "^(Add Folder to Workspace)$" },
    float = true,
    center = true,
    size = "(monitor_w*0.7) (monitor_h*0.6)"
})

hl.window_rule({
    name = "Save As float",
    match = { title = "^(Save As)$" },
    float = true,
    center = true,
    size = "(monitor_w*0.7) (monitor_h*0.6)"
})

hl.window_rule({
    name = "Open Files float",
    match = { initial_title = "(Open Files)" },
    float = true,
    size = "(monitor_w*0.7) (monitor_h*0.6)"
})

hl.window_rule({
    name = "SDDM Background float",
    match = { title = "^(SDDM Background)$" },
    float = true,
    center = true,
    size = "(monitor_w*0.16) (monitor_h*0.12)"
})

hl.window_rule({
    name = "yad float",
    match = { class = "^(yad)$" },
    float = true,
    center = true,
    size = "(monitor_w*0.2) (monitor_h*0.2)"
})

hl.window_rule({
    name = "hyprland-donate-screen float",
    match = { class = "^(hyprland-donate-screen)$" },
    float = true,
    center = true
})

-- OPACITY
hl.window_rule({
    name = "Browser opacity",
    match = { tag = "browser" },
    opacity = "0.99 0.8"
})

hl.window_rule({
    name = "Projects opacity",
    match = { tag = "projects" },
    opacity = "0.9 0.8"
})

hl.window_rule({
    name = "IM opacity",
    match = { tag = "im" },
    opacity = "0.94 0.86"
})

hl.window_rule({
    name = "Multimedia opacity",
    match = { tag = "multimedia" },
    opacity = "0.94 0.86"
})

hl.window_rule({
    name = "File manager opacity",
    match = { tag = "file-manager" },
    opacity = "0.9 0.8"
})

hl.window_rule({
    name = "Terminal opacity",
    match = { tag = "terminal" },
    opacity = "0.9 0.7"
})

hl.window_rule({
    name = "Settings opacity",
    match = { tag = "settings" },
    opacity = "0.8 0.7"
})

hl.window_rule({
    name = "Viewer opacity",
    match = { tag = "viewer" },
    opacity = "0.82 0.75"
})

hl.window_rule({
    name = "Wallpaper opacity",
    match = { tag = "wallpaper" },
    opacity = "0.9 0.7"
})

hl.window_rule({
    name = "Text editors opacity",
    match = { class = "^(gedit|org.gnome.TextEditor|mousepad)$" },
    opacity = "0.8 0.7"
})

hl.window_rule({
    name = "Deluge opacity",
    match = { class = "^(deluge)$" },
    opacity = "0.9 0.8"
})

hl.window_rule({
    name = "Seahorse opacity",
    match = { class = "^(seahorse)$" },
    opacity = "0.9 0.8"
})

hl.window_rule({
    name = "Picture-in-Picture opacity",
    match = { title = "^(Picture-in-Picture)$" },
    opacity = "0.95 0.75"
})

-- SIZE
hl.window_rule({
    name = "KooL Cheat size",
    match = { tag = "KooL_Cheat" },
    size = "(monitor_w*0.65) (monitor_h*0.9)"
})

hl.window_rule({
    name = "Wallpaper size",
    match = { tag = "wallpaper" },
    size = "(monitor_w*0.7) (monitor_h*0.7)"
})

hl.window_rule({
    name = "Settings size",
    match = { tag = "settings" },
    size = "(monitor_w*0.7) (monitor_h*0.7)"
})

hl.window_rule({
    name = "Ferdium size",
    match = { class = "^([Ff]erdium)$" },
    size = "(monitor_w*0.6) (monitor_h*0.7)"
})

-- BLUR & FULLSCREEN
hl.window_rule({
    name = "Games no blur",
    match = { tag = "games" },
    no_blur = true,
    fullscreen = 0
})

-- no_initial_focus
hl.window_rule({
    name = "JetBrains no initial focus",
    match = { class = "^(jetbrains-*)$" },
    no_initial_focus = true
})

hl.window_rule({
    name = "wind* no initial focus",
    match = { title = "^(wind.*)$" },
    no_initial_focus = true
})

-- LAYER RULES
hl.layer_rule({
    name = "Rofi blur",
    match = { namespace = "rofi" },
    blur = true
})

hl.layer_rule({
    name = "Notifications blur",
    match = { namespace = "notifications" },
    blur = true
})

hl.layer_rule({
    name = "Quickshell overview blur",
    match = { namespace = "quickshell:overview" },
    blur = true
})

hl.layer_rule({
    name = "Quickshell overview ignore alpha",
    match = { namespace = "quickshell:overview" },
    ignore_alpha = 0.5
})

-- Named rules for special cases
hl.window_rule({
    name = "Whatsapp-zapzap",
    match = { class = "^([Ww]hatsapp-for-linux|ZapZap|com.rtosta.zapzap)$" },
    size = "(monitor_w*0.6) (monitor_h*0.7)",
    center = true
})

hl.window_rule({
    name = "Picture-in-Picture",
    match = { title = "^(Picture-in-Picture)$" },
    float = true,
    move = "72% 7%",
    opacity = "0.95 0.75",
    pin = true,
    keep_aspect_ratio = true,
    size = "(monitor_w*0.3) (monitor_h*0.3)"
})

-- Thunar instance
hl.window_rule({
    name = "Thunar-Window",
    match = { class = "^(thunar)$" },
    float = true,
    center = true,
    size = "(monitor_w*0.74) (monitor_h*0.74)"
})

-- Thunar copy progress dialog
hl.window_rule({
    name = "Thunar-Progress-bar",
    match = {
        class = "^(thunar)$",
        title = "^(File Operation Progress)$"
    },
    float = true,
    center = true,
    size = "(monitor_w*0.26) (monitor_h*0.18)"
})

hl.window_rule({
    name = "xwayland-video-bridge-fixes",
    match = {
        class = "xwaylandvideobridge"
    },
    no_initial_focus = true,
    no_focus = true,
    no_anim = true,
    no_blur = true,
    max_size = "(monitor_w*1) (monitor_h*1)",
    opacity = 0.0
})
