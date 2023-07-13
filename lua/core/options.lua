vim.cmd('autocmd!')
local opt = vim.opt


vim.scriptencoding = 'utf-8'


opt.confirm = true
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.title =  true
opt.list = true
opt.hlsearch = true
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.scrolloff = 10
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.clipboard:prepend { "unnamedplus", "unnamed" }
opt.completeopt = { "menu", "menuone", "noselect"}
opt.mouse = "a"

opt.shiftround = true
opt.smarttab = true
opt.breakindent = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.wrap = false

opt.syntax = "off"

opt.splitbelow = true
opt.splitright = true
opt.showmode = false

opt.smartcase = true
opt.ignorecase = true

opt.backup = false
opt.swapfile = false
opt.signcolumn = "yes"

opt.formatoptions:append { 'r' }
opt.termguicolors = true

opt.undofile = true
opt.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')

-- not sure
opt.pumblend = 10
opt.pumheight = 10


