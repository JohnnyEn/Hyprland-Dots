-- LUA FORK OF 💫 https://github.com/JaKooLit 💫
-- Always refer to Hyprland wiki
-- https://wiki.hyprland.org/

local configDir = os.getenv("HOME") .. "/.config/hypr"
local configsDir = configDir .. "/configs"
local userConfigs = configDir .. "/UserConfigs"

-- Initial boot script enable to apply initial wallpapers, theming, new settings etc.
-- suggest not to change this or delete this including deleting referrence file in ~/.config/hypr/.initial_startup_done
-- as long as the referrence file is present, this initial-boot.sh will not execute

--hl.on("hyprland.start", function()
  --hl.exec_cmd(configsDir .. "/initial-boot.sh")
--end)

-- ENV Variables (Default + User Overridden)
require("configs.ENVariables")
require("UserConfigs.ENVariables")

-- SYSTEM SETTINGS
require("configs.SystemSettings")

-- LAPTOPS
require("configs.Laptops")
require("UserConfigs.Laptops")
require("UserConfigs.LaptopDisplay")

-- DISPLAYS
require("configs.Monitors")
require("workspaces")

-- KEYBINDS
require("configs.Keybinds")

-- WINDOW RULES
require("configs.WindowRules")
require("UserConfigs.WindowRules")

-- USER DEFINED CONFIGURATION
require("UserConfigs.UserDecorations")
require("UserConfigs.UserAnimations")
require("UserConfigs.UserKeybinds")
require("UserConfigs.UserSettings")
require("UserConfigs.01-UserDefaults")

-- STARTUP APPS (Default + User Overridden)
require("configs.Startup_Apps")
require("UserConfigs.Startup_Apps")
