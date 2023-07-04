vim.g.mapleader = " "

local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
local builtin = require("telescope.builtin")

-- Search maps
keymap('n', '<leader>pf', builtin.find_files, {})
keymap('n', '<C-p>', builtin.git_files, {})
keymap('n', '<leader>ps', function ()
  builtin.grep_string({ search = vim.fn.input("Grep > ")})
end, default_opts)

-- Comment selected lines
keymap('v', '<leader>cc', '<Plug>NERDCommenterToggle', default_opts)
keymap('n', '<leader>cc', '<Plug>NERDCommenterToggle', default_opts)

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
