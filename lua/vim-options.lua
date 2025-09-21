vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "

-- Function to toggle line numbers
local function toggle_line_numbers()
  if vim.wo.number or vim.wo.relativenumber then
    vim.wo.number = false
    vim.wo.relativenumber = false
    -- turn off snacks indent
    if Snacks and Snacks.indent then
      Snacks.indent.disable()
    end
  else
    vim.wo.number = true
    vim.wo.relativenumber = true
    -- turn on snacks indent
    if Snacks and Snacks.indent then
      Snacks.indent.enable()
    end
  end
end

-- Key maps
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })

vim.keymap.set("n", "<leader>n", toggle_line_numbers, { desc = "Toggle Copy Mode" })
vim.keymap.set("n", "<leader>cf", function()
  vim.cmd("normal! gg=G")
end, { desc = "Indent File" })

vim.keymap.set('n', '<leader>-', '<C-w>s', { desc = "Split Horizontally", noremap = true })
vim.keymap.set('n', '<leader>|', '<C-w>v', { desc = "Split Vertically", noremap = true })

vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete Buffer", noremap = true, silent = true })

vim.keymap.set("n", "<C-x>", ":xa<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-w>", ":w<CR>", { noremap = true })
vim.keymap.set("n", "<C-q>", ":q!<CR>", { noremap = true, silent = true })
