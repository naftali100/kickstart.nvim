-- keymap hints
-- leader for plugins, letters for editor commands
-- <leader>l - LSP
-- <leader>h - Harpoon
-- <leader>s - Search
-- <leader>t - Telescope
-- <leader>g - Git

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
-- keymap("n", "<C-d>", "<C-d>zz")
-- keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
keymap("n", "}", "{zz")
keymap("n", "{", "}zz")

keymap({ "i", "c", "v" }, "<c-c>", "<esc>")

-- TIP: Disable arrow keys in normal mode
keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- move line up and down using alt+k and alt+j
keymap({ "n" }, "<M-k>", "<Esc>:m .-2<CR>")
keymap({ "n" }, "<M-j>", "<Esc>:m .+1<CR>")
keymap({ "i" }, "<M-k>", "<Esc>:m .-2<CR>:startinsert<CR>")
keymap({ "i" }, "<M-j>", "<Esc>:m .+1<CR>:startinsert<CR>")
keymap('x', '<M-j>', ":m'>+<CR>gv=gv", { noremap = true, silent = true })
keymap('x', '<M-k>', ":m-2<CR>gv=gv", { noremap = true, silent = true })

--[[ LSP settings ]]

-- See `:help telescope.builtin`

-- [[ Search Section ]]
--
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
keymap('n', '<leader>sG', ':LiveGrepGitRoot<cr>', { desc = '[S]earch by [G]rep on Git Root' })

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

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
keymap('n', '<leader>1', function() ui.nav_file(1) end, { desc = '[H]arpoon [1]' })
keymap('n', '<leader>2', function() ui.nav_file(2) end, { desc = '[H]arpoon [2]' })
keymap('n', '<leader>3', function() ui.nav_file(3) end, { desc = '[H]arpoon [3]' })
keymap('n', '<leader>4', function() ui.nav_file(4) end, { desc = '[H]arpoon [4]' })

-- telescope
keymap('n', '<leader>tk', require('telescope.builtin').keymaps, { desc = '[T]elescope [K]eymaps' })

keymap('n', '<leader>so', '<cmd>so %<CR>', { desc = '[S]ource [O]rigin' })

-- Yank all and center on previous mouse position
keymap('n', '<leader>ya', 'Gygg<C-o>zz', { desc = '[Y]ank [A]ll' })

-- paste line
-- keymap('n', 'p', 'p', { desc = '[P]aste' })
-- keymap('n', 'pl', '<cmd>set paste<CR>o<esc>p:set nopaste<cr>', { desc = '[P]aste [L]ine' })
-- delete line
keymap('n', '<C-x>', 'dd', { desc = 'delete line', silent = true })

