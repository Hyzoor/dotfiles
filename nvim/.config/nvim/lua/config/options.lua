-- ======================================
--                OPTIONS
-- ======================================

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.termguicolors = true

vim.g.have_nerd_font = true

vim.o.number = true
vim.o.relativenumber = true

vim.o.expandtab = false
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false 
vim.o.clipboard = 'unnamedplus';

-- Sync OS Neovim clipboard
-- vim.schedule(function()
--     vim.o.clipboard = 'unnamedplus'
-- end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- vim.o.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

vim.o.confirm = true
