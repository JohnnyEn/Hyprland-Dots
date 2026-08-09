-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- j moves UP (by visual line unless count is given)
map({ "n", "x" }, "j", function()
  return vim.v.count == 0 and "gk" or "k"
end, { expr = true, silent = true, desc = "Up" })

-- k moves DOWN (by visual line unless count is given)
map({ "n", "x" }, "k", function()
  return vim.v.count == 0 and "gj" or "j"
end, { expr = true, silent = true, desc = "Down" })

map("n", "<leader>sT", function()
  require("telescope.builtin").live_grep()
end, { desc = "Telescope Grep (no preview text)" })
