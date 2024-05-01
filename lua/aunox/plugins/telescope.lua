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
		local map = vim.keymap.set -- for conciseness

		map("n", "F", "<cmd>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
		map("n", "<leader>g", "<cmd>Telescope live_grep<CR>", { desc = "Find string in cwd" })
		map("n", "<leader>s", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })
	end,
}
