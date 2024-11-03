return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use 'nvim-tree/nvim-web-devicons'

	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	use 'tpope/vim-fugitive'

	use 'nvim-treesitter/nvim-treesitter'
	run = ':TSUpdate'

	use 'mbbill/undotree'

	use {
		'neovim/nvim-lspconfig'
	}

	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig'

	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',      -- LSP source for nvim-cmp
			'hrsh7th/cmp-buffer',        -- Buffer completions
			'hrsh7th/cmp-path',          -- Path completions
			'hrsh7th/cmp-cmdline',       -- Command line completions
			'saadparwaiz1/cmp_luasnip',  -- Snippet completions
			'L3MON4D3/LuaSnip'           -- Snippet engine
		}
}

end)
