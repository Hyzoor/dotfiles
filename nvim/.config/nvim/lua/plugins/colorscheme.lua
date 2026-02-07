
require("catppuccin").setup({
	flavour = "frappe",
	transparent_background = true,
        styles = {
           sidebars = "transparent",
           floats = "transparent",
        },
})


require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})


vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_disable_background = true
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = true

-- vim.cmd('colorscheme catppuccin')
-- vim.cmd('colorscheme nord')
vim.cmd('colorscheme gruvbox')


-- To DO: function to change theme with a keymap

