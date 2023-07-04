local colorscheme = "onedark"

require("onedark").setup {
  style = "warmer",
  transparent = true,
  trem_colors = true,
}
require("onedark").load()

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
end
