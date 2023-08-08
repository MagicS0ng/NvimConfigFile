return {
  "nvimdev/lspsaga.nvim",
  event = 'LspAttach',
  depenedncies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("lspsaga").setup()
  end
}
