return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "<leader>bh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>bd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ba", vim.lsp.buf.code_action, {})
		end,
	},
}
