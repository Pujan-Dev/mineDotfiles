return {
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        javascriptreact = { "prettier" },
        go = { "gofmt" },
        rust = { "rustfmt" },
        cpp = { "clang_format" },
        c = { "clang_format" },
      },
    },
  },
}

