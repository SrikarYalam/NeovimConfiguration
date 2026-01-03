vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true

-- Enable 24-bit color
vim.opt.termguicolors = true

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = "unnamedplus"

require("config.init-lazy")
require("config.keymaps")
