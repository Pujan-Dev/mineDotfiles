return {
  -- Extra TS/JS utilities
  { "jose-elias-alvarez/typescript.nvim" },

  -- Rust tools
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("rust-tools").setup()
    end,
  },

  -- Go tools
  {
    "ray-x/go.nvim",
    dependencies = { "ray-x/guihua.lua" },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all()',
  },
}

