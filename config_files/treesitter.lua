require'nvim-treesitter.configs'.setup {
	ensure_installed = {"c", "lua", "vim", "bash", "javascript", "typescript", "cpp", "html", "css"},

	sync_install = false,

	auto_install = true,

	ignore_install = {},

	highlight = {
		enable = true,
	},
}
