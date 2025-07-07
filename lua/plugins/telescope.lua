return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						hidden = true,
					},
					live_grep = {
						additional_args = function(_)
							return { "--hidden" }
						end,
					},
				},
			})

			local builtin = require("telescope.builtin")
			-- File key maps
			vim.keymap.set("n", "<leader>fs", builtin.find_files, { desc = "Search file" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep files" })
			-- Buffer key maps
			vim.keymap.set("n", "<leader>bl", ":Telescope buffers<CR>", { desc = "List buffers" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
