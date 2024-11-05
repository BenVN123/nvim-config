return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
			"hrsh7th/cmp-buffer", -- Buffer completions
			"hrsh7th/vim-vsnip", -- Snippet support
			"hrsh7th/cmp-vsnip", -- Snippet completions
		},
		opts = {
			formatters_by_ft = {
				python = { "black" }, -- Example formatter for Python
				c = { "clang-format" }, -- Example formatter for C
				lua = { "stylua" },
			},

			format_on_save = true, -- Enable auto-formatting on save
			lsp_fallback = true, -- Use LSP formatter as a fallback if no formatter is configured
		},
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body) -- Use vsnip for snippets
					end,
				},
				mapping = {
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-p>"] = cmp.mapping.select_prev_item(),
					["<C-e>"] = cmp.mapping.close(),
					["<C-Space>"] = cmp.mapping.complete(),
				},
				sources = {
					{ name = "nvim_lsp" },
					{ name = "vsnip" }, -- Snippet completions
					{ name = "buffer" }, -- Buffer completions
				},
			})
		end,
	},
}
