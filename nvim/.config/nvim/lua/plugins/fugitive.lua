return {
  "tpope/vim-fugitive",
  keys = {
    { "<leader>g", vim.cmd.Git, desc = "Git Status" },
    { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git Blame" },
    { "<leader>gg", "<cmd>Gdiffsplit<cr>", desc = "Git Diff Split" },
    { "<leader>gs", "<cmd>Gdiffsplit<cr>", desc = "Git Diff Split" },
    { "<leader>ga", "<cmd>Gwrite<cr>", desc = "Git Write (Add)" },
  },
}
