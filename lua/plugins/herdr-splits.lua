return {
  {
    "lmilojevicc/herdr-splits.nvim",
    cond = vim.env.HERDR_ENV == "1",
    lazy = false,
    config = function()
      local splits = require("herdr-splits")

      splits.setup({
        at_edge = "wrap",
        auto_sync_herdr = true,
      })

      vim.api.nvim_create_autocmd("User", {
        pattern = "LazyVimKeymaps",
        callback = function()
          local function map(lhs, rhs, desc)
            vim.keymap.set("n", lhs, rhs, { silent = true, desc = desc })
          end

          map("<C-h>", splits.move_cursor_left, "Navigate left")
          map("<C-j>", splits.move_cursor_down, "Navigate down")
          map("<C-k>", splits.move_cursor_up, "Navigate up")
          map("<C-l>", splits.move_cursor_right, "Navigate right")
          map("<C-р>", splits.move_cursor_left, "Navigate left (RU)")
          map("<C-о>", splits.move_cursor_down, "Navigate down (RU)")
          map("<C-л>", splits.move_cursor_up, "Navigate up (RU)")
          map("<C-д>", splits.move_cursor_right, "Navigate right (RU)")
          map("<M-h>", splits.resize_left, "Resize left")
          map("<M-j>", splits.resize_down, "Resize down")
          map("<M-k>", splits.resize_up, "Resize up")
          map("<M-l>", splits.resize_right, "Resize right")
          map("<C-M-р>", splits.resize_left, "Resize left (RU)")
          map("<C-M-о>", splits.resize_down, "Resize down (RU)")
          map("<C-M-л>", splits.resize_up, "Resize up (RU)")
          map("<C-M-д>", splits.resize_right, "Resize right (RU)")
        end,
      })
    end,
  },
}
