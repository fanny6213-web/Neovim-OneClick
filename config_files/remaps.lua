vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.mapleader =  " "
vim.keymap.set('n', '<Leader>e', ":Ex<CR>")
vim.keymap.set('n', '<leader>af', "gg=G")
vim.keymap.set('n', '<leader>w', ":w<CR>")
vim.keymap.set('n', '<leader>q', ":q<CR>")
