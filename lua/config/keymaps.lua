-- ~/.config/nvim/lua/config/keymaps.lua

local keymap = vim.keymap

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom split" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top split" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- Resize splits with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>", { silent = true })
keymap.set("n", "<C-Down>", ":resize +2<CR>", { silent = true })
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })
