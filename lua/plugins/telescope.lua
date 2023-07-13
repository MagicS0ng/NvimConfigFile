return {
    cmd = "Telescope",
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    keys = {
      {"<leader>ff", ":Telescope find_files<cr>", desc = "find files" },  
      --{ "<>"},
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons'
    }
}
