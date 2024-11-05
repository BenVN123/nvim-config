return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				python = { "black" }, -- Example formatter for Python
				c = { "clang-format" }, -- Example formatter for C
				lua = { "stylua" },
			},

			format_on_save = true, -- Enable auto-formatting on save
			lsp_fallback = true, -- Use LSP formatter as a fallback if no formatter is configured
		},
	},
}
