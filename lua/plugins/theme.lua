return {
  -- {
  --   'maxmx03/dracula.nvim',
  --   lazy = false,        -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000,     -- make sure to load this before all the other start plugins
  --   config = function()
  --     local dracula = require 'dracula'
  --
  --     dracula.setup()
  --
  --     vim.cmd.colorscheme 'dracula'
  --   end
  -- },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {},
    lazy = false,
    config = function(_, opts)
      require('catppuccin').setup(opts)

      vim.cmd.colorscheme 'catppuccin'
    end
  },
  -- {
  --   'folke/tokyonight.nvim',
  --   priority = 1000,
  --   opts = {
  --     style = 'storm', -- mood, night, storm
  --   },
  --   config = function()
  --     vim.cmd.colorscheme 'tokyonight'
  --   end,
  -- },
  -- {
  --   'navarasu/onedark.nvim',
  --   config = function()
  --     vim.cmd.colorscheme 'onedark'
  --   end,
  -- },
  -- {
  --   'rose-pine/neovim',
  --   name = 'rose-pine',
  --   config = function()
  --     require('rose-pine').setup()
  --     vim.cmd.colorscheme 'rose-pine'
  --   end
  -- }
  -- {
  --   'rebelot/kanagawa.nvim',
  --   config = function()
  --     vim.cmd.colorscheme 'kanagawa'
  --   end
  -- },
  -- {
  --   'Mofiqul/vscode.nvim',
  --   opts = {
  --     -- Alternatively set style in setup
  --     -- style = 'light'
  --
  --     -- Enable transparent background
  --     transparent = true,
  --
  --     -- Enable italic comment
  --     italic_comments = true,
  --
  --     -- Disable nvim-tree background color
  --     disable_nvimtree_bg = true,
  --
  --     -- Override colors (see ./lua/vscode/colors.lua)
  --     color_overrides = {
  --       vscLineNumber = '#FFFFFF',
  --     },
  --   }
  -- }
}
