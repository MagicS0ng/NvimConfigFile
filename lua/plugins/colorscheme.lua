return {
  { "sainnhe/everforest" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      }
    },
    config = function()
      vim.cmd [[colorscheme tokyonight-moon]]
    end,
  },
  {
    "sainnhe/edge",
  },
}