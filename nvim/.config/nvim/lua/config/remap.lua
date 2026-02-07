-- ======================================
--               KEYMAPS
-- ======================================

vim.g.mapleader = " "
vim.keymap.set('', '<Space>', '<Nop>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Fuzzy finder Mappings
vim.keymap.set("n", "<leader>ff", ":lua require('fzf-lua').files()<CR>") --search cwd
vim.keymap.set("n", "<leader>fh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>") --search home
vim.keymap.set("n", "<leader>g", ":lua require('fzf-lua').grep()<CR>") --grep


-- Floating terminal
vim.keymap.set("n", "<leader>t", ":lua require('FTerm').open()<CR>", { desc = "Open floating terminal"})	 
vim.keymap.set('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>') 

-- File Explorer ( NVimTree )
vim.keymap.set('n', '<leader>pv', ":NvimTreeToggle<CR>", { desc = 'File explorer nvimtree' })


-- Keymaps i added
vim.keymap.set("n", "<leader>s", ":%s//g<Left><Left>", { desc = 'Replace all'}) 
vim.keymap.set("v", "<leader>i", function()
  local pos = vim.fn.getpos(".")    -- guarda la posición actual
  vim.cmd("normal! gg=G")           -- indent todo
  vim.fn.setpos(".", pos)           -- vuelve a la posición guardada
end, { desc = "Indent all file and return to cursor" })









-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
