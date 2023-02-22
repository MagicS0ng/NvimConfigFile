vim.g.mapleader = " "

local keymap = vim.keymap
------------插入模式--------
keymap.set("i", "Q", "<ESC>")
--
keymap.set("v","J", ":m '>+1<CR>gv=gv")
keymap.set("v","K", ":m '<-2<CR>gv=gv")
