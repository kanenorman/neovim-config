local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
vim.cmd "autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.html,*.css,*.scss,*.md,*.markdown,*.yaml,*.json,*.yml,*.py,*.lua,*.rb,*.php,*.go,*.java,*.h,*.hpp,*.c,*.cpp,*.rs,*.sh lua vim.lsp.buf.formatting_sync(nil, 1000)"
