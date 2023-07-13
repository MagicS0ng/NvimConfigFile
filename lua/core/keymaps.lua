vim.g.mapleader = " "
local keymaps = vim.keymap

keymaps.set("n", "x", '"_x')
keymaps.set("n", "<leader>nh", ":nohlsearch<cr>", { desc = "clear highlight" })

-- increment/decrement
keymaps.set("n", "+", "<C-a>")
keymaps.set("n", "-", "<C-x>")

-- select all
keymaps.set("n", "<C-a>", "gg<S-v>G", { desc = "select all" })

-- new tab
keymaps.set("n", "<leader>te", ":tabedit<CR>", {silent = true, desc = "new tab" })
-- split window
keymaps.set("n", "<leader>sh", ":split<CR><C-w>w", { silent = true, desc = "split horizontally" })
keymaps.set("n", "<leader>sv", ":vsplit<CR><C-w>w", { silent = true , desc = "split vertically"})
keymaps.set("n", "<leader>sx", ":close<CR>", { desc = "close current split" })

-- move window
keymaps.set("n", "<C-l>", "<C-w>l", { desc = "move to split right" })
keymaps.set("n", "<C-h>", "<C-w>h", { desc = "move to split left" })
keymaps.set("n", "<C-j>", "<C-w>j", { desc = "move to split below" })
keymaps.set("n", "<C-k>", "<C-w>k", { desc = "move to split above" })

-- telescope
keymaps.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "telescope find file" })

-- move buffer
keymaps.set("n", "<S-h>", ":BufferLineCyclePrev<cr>", {desc = "Prev Buffer"})
keymaps.set("n", "<S-l>", ":BufferLineCycleNext<cr>", {desc = "Next Buffer"})

-- lazy
keymaps.set("n", "<leader>l", ":Lazy<cr>", { desc = "Lazy" })

-- new file
keymaps.set("n", "<leader>fn", ":enew<cr>", { desc = "New File" })

-- save file
keymaps.set({ "i", "v", "n", "s" }, "<C-s>", ":w<cr><esc>", { desc = "Save File" })

-- better indenting
keymaps.set("v", "<", "<gv")
keymaps.set("v",">", ">gv")
--
--

