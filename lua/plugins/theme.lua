return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
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
