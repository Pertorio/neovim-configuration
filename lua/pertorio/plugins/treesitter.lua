return {
  "nvim-treesitter/nvim-treesitter",
   event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
        use_languagetree = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      -- ensure these language parsers are installed
      ensure_installed = {
          "bash",
          "css",
          "dockerfile",
          "go",
          "html",
          "http",
          "java",
          "javascript",
          "json",
          "lua",
          "markdown",
          "python",
          "sql",
          "xml",
          "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
