return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    indent = { enabled = true },
    picker = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = true },
  },
  keys = {
    -- Explorer
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    -- Find
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Find Buffers" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "Find Grep" },
    { "<leader>fp", function() Snacks.picker.projects() end, desc = "Find Projects" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Find Recent" },
    -- Git
    { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
    { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
    { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git Log Line" },
    { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
    { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff List" },
  },
}
