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
        ensure_installed = { "lua_ls", "qmlls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover" })
      vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "Definition" })
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code action" })
    end,
  },
}
