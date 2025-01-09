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
	},
	{
		"philosofonusus/morta.nvim",
		name = "morta",
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd.colorscheme("morta")
		end,
	},
}
