-- Go to netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected stuff
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep things in the middle 
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Ctrl + S to save
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>i' )
vim.keymap.set('n', '<C-s>', ':w<CR>')

-- Replace selection with copied text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")


vim.cmd.colorscheme  'midnight'


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('i', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
