return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",     -- not strictly required, but recommended
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
  }
}

