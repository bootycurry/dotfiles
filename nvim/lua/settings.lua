-- Basic options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true

-- Better search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Netrw settings (minimal + tree view)
vim.g.netrw_banner = 0          -- hide banner
vim.g.netrw_liststyle = 3       -- tree style
vim.g.netrw_browse_split = 0    -- open in same window
vim.g.netrw_altv = 1            -- split right
vim.g.netrw_winsize = 25        -- explorer width
vim.g.netrw_keepdir = 0

-- Minimal dark colorscheme
vim.opt.termguicolors = true
vim.cmd("colorscheme default")

-- Make background dark
vim.opt.background = "dark"

-- Optional: slightly nicer colors for line numbers & cursorline
vim.cmd([[
    highlight LineNr guifg=#5eacd3
   highlight CursorLineNr guifg=#afff5f
   highlight CursorLine guibg=#1c1c1c
]])
vim.cmd([[
    highlight Normal guibg=#000000
    highlight SignColumn guibg=#000000
    highlight LineNr guibg=#000000
    highlight CursorLine guibg=#000000
    highlight FoldColumn guibg=#000000
]])

-- Open netrw automatically (optional)
-- vim.cmd("autocmd VimEnter * silent! Lexplore")

