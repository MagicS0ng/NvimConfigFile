return {
  "akinsho/bufferline.nvim",
  version = "*",
  lazy=false,
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup({
    options = {
      diagnostics = "nvim_lsp",
      offsets = {{
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      }}
    }
    })
  end,

}
