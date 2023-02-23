vim.g.mapleader = " "

local keymap = vim.keymap
------------插入模式--------
keymap.set("i", "fq", "<ESC>")
-- split window vertically
keymap.set("n", "<leader>sv", "<C-w>v")
-- split window horizontally
keymap.set("n","<leader>sh", "<C-w>s")
-- close window
keymap.set("n", "<leader>sx", ":close<cr>")
-- toggle nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")
-- telescope find file
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
-- telescope find string
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
-- telescope find buffer
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
-- telescope git commit history
keymap.set("n", "<leader>fg", "<cmd>Telescope git_commits<cr>")
