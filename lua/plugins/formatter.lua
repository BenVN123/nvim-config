return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				python = { "black" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				lua = { "stylua" },
			},

			format_on_save = true,
			lsp_fallback = true,
		},
	},
}
