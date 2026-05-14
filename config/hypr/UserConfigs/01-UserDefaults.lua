-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */
-- This is a file where you put your own default apps, default search Engine etc

-- Set your default editor here and reboot to take effect.
-- NOTE, this will be automatically set if you select neovim or vim as your default editor
-- hl.env("EDITOR", "vim") -- default editor

-- Define preferred text editor for the KooL Quick Settings Menu (SUPER SHIFT E)
-- Script will take the default EDITOR and nano as fallback
hl.env("edit", "micro")

-- These two are for UserKeybinds.lua & Waybar Modules
hl.env("term", "alacritty")   -- Terminal
hl.env("files", "thunar")     -- File Manager

-- Default Search Engine for ROFI Search (SUPER S)
hl.env("Search_Engine", "https://www.google.com/search?q={}")
