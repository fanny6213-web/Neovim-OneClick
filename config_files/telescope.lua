--telescope configuration file--
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-f>', builtin.find_files)
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Search > ")});
end);
