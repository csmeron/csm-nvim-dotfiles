return {
  {
    "mfussenegger/nvim-lint",
    enabled = true,
    event = "VeryLazy",
    config = function()
      require("lint").linters_by_ft = {
        markdown = { "markdownlint", "vale" },
        yaml = { "yamllint" },
        python = { "mypy", "ruff" },
        lua = { "luacheck" },
      }

      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
}
