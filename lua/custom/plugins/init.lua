-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Auto close brackets
  -- 'm4xshen/autoclose.nvim',
  "windwp/nvim-autopairs",
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>nt", "<cmd>Neotree toggle<cr>", desc = "[N]eo[T]ree" },
      { "<leader>nf", "<cmd>Neotree focus<cr>",  desc = "[f]ocus on [N]eoTree" },
    },
    opts = {
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      }
    }
  },

  'ThePrimeagen/vim-be-good',
  'karb94/neoscroll.nvim',
  -- {
  --   'windwp/nvim-autopairs',
  --   event = "InsertEnter",
  --   opts = {
  --     ignored_next_char = "[%w%.]" -- will ignore alphanumeric and `.` symbol
  --   }                          -- this is equalent to setup({}) function
  -- }
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
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
