return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = vim.o.columns * 0.4,
			direction = "vertical",
			insert_mapping = true,
		})
		local map = vim.keymap.set
		map("n", "<leader>t", "<cmd>ToggleTerm<CR>", { silent = true })
		map("t", "<leader>t", "<cmd>ToggleTerm<CR>", { silent = true })
		map("t", "<Esc>", "<C-\\><C-n>", { silent = true })
	end,
}
