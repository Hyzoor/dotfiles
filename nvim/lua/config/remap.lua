-- ======================================
--               KEYMAPS
-- ======================================

vim.g.mapleader = " "
vim.keymap.set('', '<Space>', '<Nop>')


vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Write but one less"})
vim.keymap.set("n", "<leader>s", ":%s//g<Left><Left>", { desc = 'Replace all'}) 
vim.keymap.set('n', '<leader>F', vim.lsp.buf.format, { desc = "Format buffer"})

vim.keymap.set('n', '<leader>p', switch_theme ,{ desc = "Switch between colorschemes"})

-- Fuzzy finder Mappings
vim.keymap.set("n", "<leader>ff", ":lua require('fzf-lua').files()<CR>") --search cwd
vim.keymap.set("n", "<leader>fh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>") --search home
vim.keymap.set("n", "<leader>g", ":lua require('fzf-lua').live_grep()<CR>") --grep
-- vim.keymap.set("n", "<leader>fw", ":lua require('fzf-lua').grep_cword()<CR>") -- search word under cursor
-- vim.keymap.set("n", "<leader>fv", ":lua require('fzf-lua').grep_visual()<CR>") -- search word under cursor

-- Floating terminal
vim.keymap.set("n", "<leader>t", ":lua require('FTerm').open()<CR>", { desc = "Open floating terminal"})	 
vim.keymap.set('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>') 

-- File Explorer ( NVimTree )
vim.keymap.set('n', '<leader>e', ":NvimTreeToggle<CR>", { desc = 'File explorer nvimtree' })

-- Buffers
vim.keymap.set("n", "<leader>q", ":bprevious | bdelete #<CR>", { desc = "Close and change to prev"})
vim.keymap.set("n", "<leader>Q", ":q!<CR>", { desc = "Close window, one less key"})
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer"})
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer"})

-- Testing keymaps
vim.keymap.set('n', '<leader>sv', ":vsplit<CR>", { desc = "Split vertical, new buffer"})
vim.keymap.set('n', '<leader>z', ":ZenMode<CR>", { desc = "Enable/Disable ZenMode"})

-- LSP navigation
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
