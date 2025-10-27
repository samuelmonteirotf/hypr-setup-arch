-- =====================================
-- Neovim Configuration - Samuel Setup
-- Arch Linux + Hyprland + Lazy.nvim
-- =====================================

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Carregar módulos
require("config.options")
require("config.keymaps")
require("config.plugins")
require("config.lsp")
require("config.colorscheme")

