return {
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
  {
    -- inserting or changing "" etc...
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = true,
  },
  {
    -- auto complete brackets...
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    config = true,
  }
}
