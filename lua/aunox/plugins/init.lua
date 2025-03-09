return {
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
	{
		"karb94/neoscroll.nvim",
		opts = {},
	},
	{
		"towolf/vim-helm",
		ft = "helm",
		config = function() end,
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
