return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        tsserver = {},
        rust_analyzer = {},
        gopls = {},
        clangd = {},
      },
    },
  },
}

