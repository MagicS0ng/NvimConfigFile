require('basic')
-- require('keymaps')
require('init-lualine')
require('init-plugins')
require('init-lsp')
require('init-NvimTree')
require('init-vimtex')
-- bufferline
require('init-bufferline')
-- colorizer
require('colorizer').setup()
-- colorScheme
vim.cmd[[colorscheme tokyonight-storm]]
-- lualine
require('lualine').setup()
-- lsp manager
require('init-mason')
