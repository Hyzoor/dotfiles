return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "bash", "c", "cpp", "css", "html",
          "java", "javascript", "json", "lua",
          "markdown", "markdown_inline",
          "python", "tsx", "typescript",
        },
  
        highlight = {
          enable = true,
        },
  
        indent = {
          enable = true,
        },
      })
    end,
  }
  