-- ~/.config/nvim/lua/harmonia/init.lua

-- Define Harmonia color palette
local colors = {
    background = "#2E2A31",  -- Dark background
    foreground = "#D3D0C8",  -- Light gray text (foreground)
    red = "#F28D85",  -- Soft red
    green = "#A4C97D",  -- Muted green
    yellow = "#F2A365",  -- Warm yellow
    blue = "#7C88D6",  -- Muted blue
    purple = "#9D79D6",  -- Soft purple
    cyan = "#72C5C9",  -- Light cyan
    white = "#E8E8E8",  -- Light white
    darkGray = "#484848",  -- Dark gray
    lightGray = "#A1A1A1",  -- Light gray for non-essential text
    orange = "#FF9F6D",  -- Orange accent
    pink = "#F28D87",  -- Light pink
    commentGray = "#7A7A7A",  -- Darker gray for comments
}

-- Set general background and foreground
vim.cmd("highlight Normal guibg=" .. colors.background .. " guifg=" .. colors.foreground)
vim.cmd("highlight NonText guibg=" .. colors.background .. " guifg=" .. colors.darkGray)
vim.cmd("highlight EndOfBuffer guibg=" .. colors.background)

-- Set syntax highlighting
vim.cmd("highlight Comment guifg=" .. colors.commentGray) -- Comments
vim.cmd("highlight Constant guifg=" .. colors.pink) -- Constants (numbers, characters)
vim.cmd("highlight Identifier guifg=" .. colors.blue) -- Variables, functions
vim.cmd("highlight Statement guifg=" .. colors.red) -- Keywords (if, for, while)
vim.cmd("highlight PreProc guifg=" .. colors.orange) -- Preprocessor directives
vim.cmd("highlight Type guifg=" .. colors.green) -- Types (int, float, etc.)
vim.cmd("highlight Special guifg=" .. colors.purple) -- Special characters
vim.cmd("highlight Underlined gui=underline guifg=" .. colors.yellow) -- Underlined text
vim.cmd("highlight Todo guifg=" .. colors.orange .. " guibg=" .. colors.background) -- Todo comments

-- Highlight strings and numbers
vim.cmd("highlight String guifg=" .. colors.cyan) -- Strings
vim.cmd("highlight Number guifg=" .. colors.yellow) -- Numbers
vim.cmd("highlight Boolean guifg=" .. colors.green) -- Boolean literals

-- Function and class declarations
vim.cmd("highlight Function guifg=" .. colors.blue) -- Functions
vim.cmd("highlight Type guifg=" .. colors.green) -- Types

-- Statusline and cursorline
vim.cmd("highlight StatusLine guibg=" .. colors.darkGray .. " guifg=" .. colors.foreground)
vim.cmd("highlight StatusLineNC guibg=" .. colors.darkGray .. " guifg=" .. colors.lightGray)
vim.cmd("highlight CursorLine guibg=" .. colors.darkGray)

-- Search highlighting
vim.cmd("highlight Search guibg=" .. colors.orange .. " guifg=" .. colors.background)
vim.cmd("highlight IncSearch guibg=" .. colors.yellow .. " guifg=" .. colors.background)

-- Line numbers and column numbers
vim.cmd("highlight LineNr guifg=" .. colors.lightGray)
vim.cmd("highlight CursorLineNr guifg=" .. colors.white)

-- Special highlighting for diagnostics
vim.cmd("highlight DiagnosticError guifg=" .. colors.red)
vim.cmd("highlight DiagnosticWarn guifg=" .. colors.yellow)
vim.cmd("highlight DiagnosticInfo guifg=" .. colors.blue)
vim.cmd("highlight DiagnosticHint guifg=" .. colors.green)

-- Visual and search highlights
vim.cmd("highlight Visual guibg=" .. colors.darkGray)
vim.cmd("highlight VisualNOS guibg=" .. colors.darkGray)

-- Matching parens and brackets
vim.cmd("highlight MatchParen guifg=" .. colors.green .. " guibg=" .. colors.background)

-- Customize terminal colors
vim.cmd("let g:terminal_ansi_colors = ['" .. colors.background .. "','" .. colors.red .. "','" .. colors.green .. "','" .. colors.yellow .. "','" .. colors.blue .. "','" .. colors.purple .. "','" .. colors.cyan .. "','" .. colors.white .. "']")

-- Set the default color scheme
vim.cmd("colorscheme default")

-- Optionally, save the file as a custom theme
-- You can put this code in `~/.config/nvim/lua/harmonia.lua`
