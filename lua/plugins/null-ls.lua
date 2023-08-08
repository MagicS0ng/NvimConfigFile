return {
  {
    "jose-elias-alvarez/null-ls.nvim",
  },
  {
    "jayp0521/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
  }
}
