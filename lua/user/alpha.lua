local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

-- Github User Info
local handle = io.popen "git config --get user.name"
local gitUsername = handle:read("*a"):gsub("\n", "")
handle:close()

local dashboard = require "alpha.themes.dashboard"

local function header()
  local date = os.date "  %m-%d-%Y"
  local website = "kanenorman.com"
  return date, website
end

local date, website = header()

dashboard.section.header.val = { date, website }
dashboard.section.buttons.val = {
  dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),

  dashboard.button(
    "gh",
    " " .. " GitHub",
    string.format(
      ":silent !sh -c 'xdg-open https://github.com/%s 2>/dev/null || open https://github.com/%s'<CR>",
      gitUsername,
      gitUsername
    )
  ),
}

local function footer()
  -- Specify the number of white spaces for padding
  local paddingCount = 23
  local padding = string.rep(" ", paddingCount)
  local version_number = padding
    .. " v"
    .. vim.version().major
    .. "."
    .. vim.version().minor
    .. "."
    .. vim.version().patch

  local fortune = require "alpha.fortune"
  local quote = table.concat(fortune(), "\n")
  return version_number .. "\n" .. quote
end

dashboard.section.footer.val = footer()
dashboard.section.header.opts.align = "center"
dashboard.section.footer.opts.align = "center"
dashboard.section.footer.opts.hl = "Constant"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
