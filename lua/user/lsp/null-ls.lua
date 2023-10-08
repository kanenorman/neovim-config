local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local builtins = null_ls.builtins
local formatting = builtins.formatting
local diagnostics = builtins.diagnostics

null_ls.setup {
  debug = false,
  sources = {
    formatting.prettier.with {
      extra_filetypes = { "toml" },
    },
    formatting.black.with { extra_args = { "--fast" } },
    formatting.stylua,
    formatting.google_java_format,
    formatting.sql_formatter,
    diagnostics.flake8.with { extra_args = { "--max-line-length", "88" } }, --black formatter defaults to 88
    diagnostics.mypy.with { extra_args = { "--ignore-missing-imports" } },
    formatting.isort.with { extra_args = { "--profile", "black" } },
    diagnostics.eslint,
    builtins.hover.dictionary,
    formatting.codespell,
    builtins.code_actions.gitsigns,
    diagnostics.pydocstyle,
  },
}
