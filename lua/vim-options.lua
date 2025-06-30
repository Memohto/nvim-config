vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "

-- Key maps
vim.keymap.set('n', '<leader>w', '<C-w>', { noremap = true })
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })
