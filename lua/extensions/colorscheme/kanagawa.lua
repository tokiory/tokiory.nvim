-- Default options:
require('kanagawa').setup({
    transparent = true,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
