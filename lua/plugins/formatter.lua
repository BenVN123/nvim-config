return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				python = { "isort", "black" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				lua = { "stylua" },
				go = { "gofmt" },
				rust = { "rustfmt" },
			},

			format_on_save = true,
			lsp_fallback = true,
		},
	},
}
