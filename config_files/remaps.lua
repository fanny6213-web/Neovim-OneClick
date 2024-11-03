vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.mapleader =  " "
vim.keymap.set('n', '<Leader>e', ":Ex<CR>")
vim.keymap.set('n', '<leader>w', ":w<CR>")
vim.keymap.set('n', '<leader>q', ":q<CR>")

--kind of macros
vim.keymap.set('n', '<leader>run', function ()
	vim.cmd(":w")
	vim.cmd(":!g++ % -o output.sh")
	vim.cmd(':!./output.sh')
end)
