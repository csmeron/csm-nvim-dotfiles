return {
  -- {
  --   "mfussenegger/nvim-lint",
  --   -- opts = require "configs.lint",
  --   config = function()
  --     require "configs.lint"
  --   end,
  -- },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "isort",
        "black",
        "mypy",
        "ruff",
        "pyright",
        "prettier",
        "prettierd",
        "stylua",
        "debugpy",
        "cbfmp",
        "jupytext",
        "Glow",
      },
    },
  },
  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow",
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- null-ls for ruff, mypy
}
