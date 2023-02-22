vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  -- colorScheme
  -- use 'folke/tokyonight.nvim'
  -- use "EdemEast/nightfox.nvim" 
  use 'sainnhe/everforest' 
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' 
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
  'nvim-treesitter/nvim-treesitter',
  run = function()
  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
  ts_update()
  end,
  }
  use {
  "windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
  }
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- File Tree
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  
  }
  -- colorizer
  use 'norcalli/nvim-colorizer.lua'
  -- lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- vimtex
  use 'lervag/vimtex'
  -- markdown preview
  use({
  "iamcco/markdown-preview.nvim",
  run = function() vim.fn["mkdp#util#install"]() end,
  })
  -- lsp manager
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  -- lsp
  use 'neovim/nvim-lspconfig'

end)

