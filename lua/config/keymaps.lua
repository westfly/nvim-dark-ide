-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
-- https://medium.com/@xiangdejun_32936/why-i-switched-to-lazyvim-fc4fdeb888bc
-- New Tab
keymap("n", "te", ":tabedit<CR>", opts)
keymap("n", "sp", ":split<CR><C-w>l", opts)
keymap("n", "sv", ":vsplit<CR><C-w>l", opts)

-- Better line start/end
--[[
  keymap("n", "H", "^", opts)
  keymap("n", "L", "$", opts)
  keymap("v", "H", "^", opts)
  keymap("v", "L", "$", opts)
]]

-- Better escape
keymap("i", "jk", "<ESC>", opts)
--keymap("n", ";", ":", opts)
keymap("n", "<ESC>", "<ESC>:noh<CR>", opts)

-- Tab switch buffer
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)
