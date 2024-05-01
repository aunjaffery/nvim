return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules",
			    "dist",
			    "bin",
			    "build",
			    "admin_app",
			    "yarn.lock",
			    "package.lock",
			    "*.png",
			    "*.jpg",
			    "*.ico",
        },
      },
    })
    telescope.load_extension("fzf")

    -- set keymaps
    local km = vim.keymap -- for conciseness

    km.set("n", "F", "<cmd>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
    km.set("n", "<leader>g", "<cmd>Telescope live_grep<CR>", { desc = "Find string in cwd" })
    km.set("n", "<leader>s", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })
  end,
}
