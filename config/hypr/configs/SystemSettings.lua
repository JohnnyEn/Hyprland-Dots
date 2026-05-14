-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */
-- Default settings
-- This is where you put your own settings as this will not be touched during update
-- if the upgrade.sh is used.

-- refer to Hyprland wiki for more info https://wiki.hyprland.org/Configuring/Variables/
-- NOTE: some settings are in ~/.config/hypr/UserConfigs/UserDecorAnimations.conf

local scriptsDir = os.getenv("HOME") .. "/.config/hypr/scripts"

hl.config({
  dwindle = {
    preserve_split = true,
    -- smart_split = true,
    special_scale_factor = 0.8,
  },

  master = {
    new_status = "master",
    new_on_top = 1,
    mfact = 0.5,
  },

  general = {
    resize_on_border = true,
    layout = "dwindle",
  },

  input = {
    kb_layout = "cz",
    kb_variant = "",
    kb_model = "",
    kb_options = "",
    kb_rules = "",
    repeat_rate = 50,
    repeat_delay = 300,

    sensitivity = 0, -- mouse sensitivity
    -- accel_profile = "adaptive", -- flat or adaptive or blank or EMPTY means libinput's default mode -- commented
    numlock_by_default = true,
    left_handed = false,
    follow_mouse = 1,
    float_switch_override_focus = false,

    touchpad = {
      disable_while_typing = true,
      natural_scroll = false,
      clickfinger_behavior = true,
      middle_button_emulation = true,
      tap_to_click = true,
      drag_lock = false,
    },

    -- below for devices with touchdevice ie. touchscreen
    touchdevice = {
      enabled = true,
    },

    -- below is for tablet; see link above for proper variables
    tablet = {
      transform = 0,
      left_handed = 0,
    },
  },

  gestures = {
    workspace_swipe_distance = 500,
    workspace_swipe_invert = true,
    workspace_swipe_min_speed_to_force = 30,
    workspace_swipe_cancel_ratio = 0.5,
    workspace_swipe_create_new = true,
    workspace_swipe_forever = true,
    -- workspace_swipe_use_r          = true, -- uncomment if wanted a forever create a new workspace with swipe right
  },

  misc = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    vrr = 1,
    mouse_move_enables_dpms = true,
    enable_swallow = false,
    swallow_regex = "^(kitty)$",
    focus_on_activate = true,
    initial_workspace_tracking = 0,
    middle_click_paste = false,
    enable_anr_dialog = true,   -- Application not Responding (ANR)
    anr_missed_pings = 15,     -- ANR Threshold default 1 is too low
    allow_session_lock_restore = true,   -- Prevent lockscreen crash when resume from suspend
    -- This only works with HL v0.53+
    on_focus_under_fullscreen = 1,
    -- 0 - Default, no change
    -- 1 - New focused window takes over fullscreen (Windows-like Alt-Tab)
    -- 2 - New focused window stays behind the fullscreen one
  },

  -- opengl = {
  --   nvidia_anti_flicker = true,
  -- },

  binds = {
    workspace_back_and_forth = true,
    allow_workspace_cycles = true,
    pass_mouse_when_bound = false,
  },

  -- Could help when scaling and not pixelating
  xwayland = {
    enabled = true,
    force_zero_scaling = true,
  },

  render = {
    direct_scanout = 0,
  },

  cursor = {
    sync_gsettings_theme = true,
    no_hardware_cursors = false,    -- explicitly disable hardware cursors, default value has been true
    enable_hyprcursor = false, -- disabled hyprcursor, maybe it's better since I dont use hyprcursor theme
    warp_on_change_workspace = 2,
    no_warps = false,
  },
})

-- Gesture actions
-- Note: pinchin/pinchout direction names may need verification against your Hyprland version
-- hl.gesture({ fingers = 2, direction = "pinchin",  action = function() hl.exec_cmd("true") end })
-- hl.gesture({ fingers = 2, direction = "pinchout", action = function() hl.exec_cmd("true") end })
hl.gesture({
  fingers = 3,
  direction = "right",
  action = function()
    hl.exec_cmd("wlrctl pointer click back")
  end
})
hl.gesture({
  fingers = 3,
  direction = "left",
  action = function()
    hl.exec_cmd("wlrctl pointer click forward")
  end
})
-- hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })

-- hl.gesture({ fingers = 4, direction = "up",   action = function()
--   hl.exec_cmd("hyprctl keyword cursor:zoom_factor \"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor * 1.5}')\"")
-- end })
-- hl.gesture({ fingers = 4, direction = "down", action = function()
--   hl.exec_cmd("hyprctl keyword cursor:zoom_factor \"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor / 1.5}')\"")
-- end })
-- hl.gesture({ fingers = 3, direction = "up", action = function() hl.dsp.exec_cmd(scriptsDir .. "/OverviewToggle.sh") end })
