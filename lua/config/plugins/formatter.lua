return {
	"stevearc/conform.nvim",
	keys = {
		{
			"<leader>fm",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},

	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettierd" },
            rust = { "rustfmt" },
            nix = { "nixfmt" }

			--elixir = { "elixir-ls" },
		},

		default_format_opts = {
			lsp_format = "fallback",
		},

		format_on_save = {
			timeout = 1000,
		},

		formatters = {
			shfmt = {
				inherit = false,
				command = "shfmt",
				args = { "-i", "2", "-filename", "$FILENAME" },
			},
			--elixir = {
			--	inherit = false,
			--	command = "mix format",
			--	args = {},
			--},
		},
	},
}
