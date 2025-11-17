return {
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>e", false },
      { "<leader>E", false },
    },
  },

  {
    "nvim-mini/mini.files",
    keys = {
      {
        "<leader>e",
        function()
          if not require("mini.files").close() then
            require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
          end
        end,
        desc = "Open mini.files (directory of current file)",
      },
      {
        "<leader>E",
        function()
          if not require("mini.files").close() then
            require("mini.files").open(vim.uv.cwd(), true)
          end
        end,
        desc = "Open mini.files (cwd)",
      },
      {
        "<leader>fm",
        function()
          require("mini.files").open(LazyVim.root(), true)
        end,
        desc = "Open mini.files (root)",
      },
    },
    opts = {
      windows = {
        width_preview = 80,
      },
    },
  },
}
