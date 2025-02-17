return {
	"neovim/nvim-lspconfig",
	config = function()
		local lsp = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lsp.lua_ls.setup({
			capabilities = capabilities,
		})

		lsp.elixirls.setup({
			capabilities = capabilities,
			cmd = { "/run/current-system/sw/bin/elixir-ls" },
		})

		lsp.rust_analyzer.setup({
			capabilities = capabilities,
		})

		lsp.gopls.setup({
			capabilities = capabilities,
		})

		lsp.html.setup({
			capabilities = capabilities,
		})

		lsp.eslint.setup({
			capabilities = capabilities,
		})

		lsp.cssls.setup({
			capabilities = capabilities,
		})

		lsp.vuels.setup({
			capabilities = capabilities,
			cmd = { "/run/current-system/sw/bin/vue-language-server" },
		})

		lsp.csharp_ls.setup({
			capabilities = capabilities,
		})
	end,
}
