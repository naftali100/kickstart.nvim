-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Auto close brackets
  -- 'm4xshen/autoclose.nvim',

  -- smooth scrolling
  {
    'declancm/cinnamon.nvim',
    config = function() require('cinnamon').setup() end
  },
  'ThePrimeagen/vim-be-good',
  -- {
  --   'goolord/alpha-nvim',
  --   config = function()
  --     require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
  --   end
  -- }
  {
    'f-person/git-blame.nvim',
    opts = {
      virtual_text_column = 80
    }
  },
  'Exafunction/codeium.vim', -- codeium ai
  --  'unblevable/quick-scope',  -- highlighs unique characters for easier f,t navigation
  'pocco81/auto-save.nvim',
  'ThePrimeagen/harpoon',
  'anuvyklack/hydra.nvim',
}
