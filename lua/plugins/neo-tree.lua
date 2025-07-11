return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    })
    vim.keymap.set("n", "<leader>tn", ":Neotree toggle<CR>", { desc = "Toggle tree", noremap = true, silent = true })
    vim.keymap.set("n", "<leader>tf", ":Neotree focus<CR>", { desc = "Focus tree", noremap = true, silent = true })
  end
}
