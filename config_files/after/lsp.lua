local lspconfig = require('lspconfig')

local servers = {'clangd', 'lua_ls', 'pyright', 'html', 'cssls', 'biome'}

for _, server in ipairs(servers) do
	lspconfig[server].setup{}
end
