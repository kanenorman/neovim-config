local colorscheme = "github_dark_high_contrast"

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
end

vim.cmd "set termguicolors"
vim.cmd "highlight Normal guibg=NONE ctermbg=NONE"
