return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    filter = function(mapping)
      return mapping.desc and mapping.desc ~= ""
    end,
    plugins = {
      marks = false,
      registers = false,
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    wk.add({
      { "<leader>b", group = "Buffer" },
      { "<leader>f", group = "File" },
      { "<leader>l", group = "LSP" },
      { "<leader>t", group = "NeoTree" },
    })
  end,
}
