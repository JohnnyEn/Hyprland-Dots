-- 1. Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
    }, true, {})
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- 2. Hard-force the legacy LazyVim branch configuration
require("lazy").setup({
  spec = {
    { 
      "LazyVim/LazyVim", 
      import = "lazyvim.plugins",
      -- Force lazy.nvim to ONLY track this specific legacy tag
      tag = "v11.35.0", 
      priority = 10000 
    },
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
    -- CRITICAL: Tells lazy.nvim to stop attempting to pull latest updates 
    -- from upstream plugins that now require Neovim 0.11
    version = "v11.35.0", 
  },
})
