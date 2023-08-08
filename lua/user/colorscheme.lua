local colorscheme = "bluloco"

require("no-clown-fiesta").setup {
  transparent = true, -- Enable this to disable the bg color
  styles = {
    -- You can set any of the style values specified for `:h nvim_set_hl`
    comments = {},
    keywords = {},
    functions = {},
    variables = {},
    type = { bold = true },
    lsp = { underline = true },
  },
}

require("github-theme").setup {
  options = { transparent = true },
}

require("poimandres").setup {
  disable_background = true, -- disable background
  disable_float_background = true, -- disable background for floats
}

require("bluloco").setup {
  style = "auto", -- "auto" | "dark" | "light"
  transparent = true,
  italics = false,
  terminal = vim.fn.has "gui_running" == 1, -- bluoco colors are enabled in gui terminals per default.
  guicursor = true,
}

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
end
