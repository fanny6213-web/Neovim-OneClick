local cmp = require('cmp')

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},

	mapping = cmp.mapping.preset.insert({
		['<C-k>'] = cmp.mapping.select_prev_item(),
		['<C-j>'] = cmp.mapping.select_next_item(),
		['<C-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm(),
	}),

	sources = cmp.config.sources({
		{name = 'nvim_lsp'},
		{name = 'luasnip'},
	}, {
		{name = 'buffer'},
		{name = 'path'},
	})
})

cmp.setup.cmdline('/', {
	sources = {
		{name = 'buffer'},
	}
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})
