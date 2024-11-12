return {
  {
    "mfussenegger/nvim-lint",
    opts = require "configs.lint",
  },
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
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

      }
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
}
