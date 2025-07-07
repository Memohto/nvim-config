vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "

-- Key maps
vim.keymap.set('n', '<leader>w', '<C-w>', { noremap = true })
vim.keymap.set('n', '<leader>ws', '<C-w>s', { desc = "Split horizontally", noremap = true })
vim.keymap.set('n', '<leader>wv', '<C-w>v', { desc = "Split vertically", noremap = true })

vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

vim.keymap.set("i", "jj", "<Esc>", { noremap = true })

vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Next buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Previous buffer", noremap = true, silent = true })

vim.keymap.set("n", "<leader>xx", ":xa<CR>", { noremap = true })
