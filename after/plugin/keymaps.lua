-- keymap hints
-- leader for plugins, letters for editor commands
-- <leader>l - LSP
-- <leader>h - Harpoon
-- <leader>s - Search
-- <leader>t - Telescope

-- [[ Basic Keymaps ]]


local keymap = vim.keymap.set

-- Keymaps for better default experience
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- See `:help vim.keymap.set()`
keymap("n", "Q", "<nop>")

-- Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- from ThePrimagen's dotfiles
-- move by page and paragraph, and keep the view centered
keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
keymap("n", "}", "{zz")
keymap("n", "{", "}zz")

keymap({ "i", "c", "v" }, "<c-c>", "<esc>")

--[[ LSP settings ]]

-- See `:help telescope.builtin`
keymap('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
keymap('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
keymap('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

keymap('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
keymap('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
keymap('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
keymap('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
keymap('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
keymap('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
keymap('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- move line up and down using alt+k and alt+j, for both normal and insert mode
keymap({ "n" }, "<M-k>", "<Esc>:m .-2<CR>")
keymap({ "n" }, "<M-j>", "<Esc>:m .+1<CR>")
keymap({ "i" }, "<M-k>", "<Esc>:m .-2<CR>:startinsert<CR>")
keymap({ "i" }, "<M-j>", "<Esc>:m .+1<CR>:startinsert<CR>")

-- close current buffer
keymap("n", "<leader>sa", "<cmd>ASToggle<CR>", { desc = 'auto save toggle' })
keymap("n", "<leader>bd", "<cmd>Bdelete!<CR>", { desc = '[B]uffer [D]elete' })


keymap("n", "<leader>lf", "<cmd>Format<CR>", { desc = '[L]SP [F]ormat' })

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

keymap('n', '<leader>hf', mark.add_file, { desc = '[H]arpoon [F]ile' })
keymap('n', '<leader>hm', ui.toggle_quick_menu, { desc = '[H]arpoon [M]enu' })
keymap('n', '<leader>hp', ui.nav_prev, { desc = '[H]arpoon [P]revious' })
keymap('n', '<leader>hn', ui.nav_next, { desc = '[H]arpoon [N]ext' })
keymap('n', '<leader>1', ui.nav_file, { desc = '[H]arpoon [1]' })
keymap('n', '<leader>2', ui.nav_file, { desc = '[H]arpoon [2]' })
keymap('n', '<leader>3', ui.nav_file, { desc = '[H]arpoon [3]' })
keymap('n', '<leader>4', ui.nav_file, { desc = '[H]arpoon [4]' })

-- telescope
keymap('n', '<leader>tk', require('telescope.builtin').keymaps, { desc = '[T]elescope [K]eymaps' })

keymap('n', '<leader>so', '<cmd>so %<CR>', { desc = '[S]ource [O]rigin' })

