-- ======================================
--                OPTIONS
-- ======================================

vim.o.termguicolors = true
vim.g.have_nerd_font = true
vim.o.number = true
vim.o.relativenumber = true

vim.o.expandtab = false
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

vim.o.showmode = false 
vim.o.clipboard = 'unnamedplus';

vim.o.smartindent = true;
vim.o.breakindent = true
vim.o.hlsearch = false

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

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10
vim.o.confirm = true


vim.diagnostic.config({
  virtual_text = true,        -- muestra el error directamente en la línea
  signs = true,               -- muestra iconos en la columna de signos
  underline = true,           -- subraya la parte del código con error
  update_in_insert = false,   -- evita que aparezcan errores mientras escribes
})

