-- utf8
vim.g.encoding = "UTF-8"
vim.o.fillencoding = "utf-8"
-- hjkl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 显示行号:(相对行号/绝对行号)
vim.wo.number = true
vim.wo.relativenumber = false
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列?
vim.wo.signcolumn = "yes"
-- 缩进2个空格为一个Tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
-- >> << 时移动长度?
vim.o.shiftwidth = 2 
vim.bo.shiftwidth = 2
-- 空格代替Tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索不要高亮
vim.o.hlsearch = true 
-- 边输入边搜索
vim.o.incsearch = true
-- 命令行行高为2,提供足够的显示空间
vim.o.cmdheight = 2
-- 文件被外部修改时,自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 禁止折行?
vim.wo.wrap = false
-- 光标在行首尾时可以跳到下一行
vim.o.whichwrap = "<,>,[,]"
vim.o.showmode = false
-- 允许隐藏被修改的buffer
vim.o.hidden = true
-- 鼠标支持
vim.o.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- 更新时间
vim.o.updatetime = 300
-- 设置 timeoutlen 为等待键盘快捷键连击时间为500毫秒
vim.o.timeoutlen = 500
-- 分割窗口从下和右出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 自动补全不自动选中 (不一定有效)
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 不可见字符的显示,(空格为·,tab之后设置)
vim.o.list = true
vim.o.listchars = "space:·"

-- 补全增强?
vim.o.wildmenu = true
-- Don't pass messages to |ins-completin menu|??
vim.o.shortmess = vim.o.shortmess .. "c"
-- 补全最多显示10行
vim.o.pumheight = 10
-- 永远显示 tabline?
vim.o.showtabline = 2
-- 系统剪贴板
vim.opt.clipboard:append("unnamedplus")
-- 启用鼠标
vim.opt.mouse:append("a")
-- 
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.o.showmode = false
-- bufferline
-- require("bufferline").setup{}
-- colorizer
-- require'colorizer'.setup()
-- colorScheme
-- vim.cmd[[colorscheme tokyonight-storm]]
-- lualine
--require('lualine').setup()
