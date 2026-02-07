
-- auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('shaunsingh/nord.nvim', { ['as'] = 'nord'}) 
Plug('ellisonleao/gruvbox.nvim', { ['as'] = 'gruvbox' })
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' }) 
Plug('nvim-lualine/lualine.nvim') --statusline
Plug('nvim-tree/nvim-web-devicons') --pretty icons
Plug('nvim-treesitter/nvim-treesitter') --improved syntax
Plug('nvim-tree/nvim-tree.lua') --file explorer
Plug('windwp/nvim-autopairs') --autopairs 
Plug('ibhagwan/fzf-lua') --fuzzy finder and grep
Plug('MeanderingProgrammer/render-markdown.nvim') --render md inline
Plug('mfussenegger/nvim-lint') --async linter
Plug('numToStr/FTerm.nvim') --floating terminal
Plug('numToStr/FTerm.nvim') --floating terminal

vim.call('plug#end')

-- Plug('folke/twilight.nvim') --surrounding dim
-- Plug('lewis6991/gitsigns.nvim') --git
-- Plug('numToStr/Comment.nvim') --easier comments
-- Plug('norcalli/nvim-colorizer.lua') --color highlight
-- Plug('goolord/alpha-nvim') --pretty startup



-- Config and Plugins files

require("config.remap")
require("config.options")
require("plugins.colorscheme")
require("plugins.autopairs")
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.render-markdown")
require("plugins.treesitter")
require("plugins.fzf-lua")
