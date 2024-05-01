return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		local bufline = require("bufferline")
		bufline.setup({
			options = {
				separator_style = "slope",
				show_buffer_close_icons = false,
			},
		})
		local map = vim.keymap.set
		map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })
		map("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
		map("n", "J", ":BufferLineCyclePrev<CR>", { silent = true })
		map("n", "K", ":BufferLineCycleNext<CR>", { silent = true })
		map("n", "D", ":bd<CR>", { silent = false })
		map("n", "<C-S-Left>", ":BufferLineMovePrev<CR>", { silent = true })
		map("n", "<C-S-Right>", ":BufferLineMoveNext<CR>", { silent = true })
	end,
}
-- return {
--   "romgrk/barbar.nvim",
--   dependencies = { "nvim-tree/nvim-web-devicons" },
--   init = function() vim.g.barbar_auto_setup = false end,
--   version = '^1.0.0',
--   config = function()
--     local bufline = require("bufferline")
--     bufline.setup({
--       clickable = false,
--     })
--     local km = vim.keymap
--     map("n", "<S-Tab>", ":BufferPrevious<CR>", { silent = true })
--     map("n", "<Tab>", ":BufferNext<CR>", { silent = true })
--     map("n", "J", ":BufferPrevious<CR>", { silent = true })
--     map("n", "K", ":BufferNext<CR>", { silent = true })
--     map("n", "D", ":BufferClose<CR>", {})
--     map("n", "<C-S-Left>", ":BufferMovePrevious<CR>", { silent = true })
--     map("n", "<C-S-Right>", ":BufferMoveNext<CR>", { silent = true })
--   end
-- }
