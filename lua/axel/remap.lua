vim.g.mapleader = " "

local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
local builtin = require("telescope.builtin")

-- Search maps
keymap('n', '<leader>pf', builtin.find_files, {})
keymap('n', '<C-p>', builtin.git_files, {})
keymap('n', '<leader>gr', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, default_opts)
keymap('n', '<C-f>', 've*', default_opts)

-- Comment selected lines
keymap('v', '<leader>/', '<Plug>NERDCommenterToggle', default_opts)
keymap('n', '<leader>/', '<Plug>NERDCommenterToggle', default_opts)

-- Keep cursor in middle
keymap('n', '<C-d>', '<C-d>zz', default_opts)
keymap('n', '<C-u>', '<C-u>zz', default_opts)
keymap('n', '<C-o>', '<C-o>zz', default_opts)
keymap('n', '<C-i>', '<C-i>zz', default_opts)
keymap('n', 'n', 'nzzzv', default_opts)
keymap('n', 'N', 'Nzzzv', default_opts)

-- Move visual selection
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Trouble
keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", default_opts)

-- New escape
keymap("i", "jj", "<Esc>", default_opts)

--Lazy git
keymap("n", "<leader>lg", "<cmd>LazyGit<cr>", default_opts)

-- DiffView
keymap("n", "<leader>gv", "<cmd>DiffviewOpen origin/master...HEAD<cr>", default_opts)

-- Buffer navigation
keymap("n", "<tab>", ":bn <Enter>", default_opts)
keymap("n", "<S-tab>", ":bp <Enter>", default_opts)

-- Replace word with copy register
keymap("n", "<leader>rw", "viwp", default_opts)
