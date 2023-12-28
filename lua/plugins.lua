return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("sbdchd/neoformat")
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup({
				size = vim.o.columns * 0.4,
				insert_mappings = true,
				direction = "vertical",
			})
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				run = "make",
			},
		},
		config = function()
			require("plugins.telescope")
		end,
	})
	use({
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	})
	use({
		"williamboman/mason-lspconfig.nvim",
		after = "mason.nvim",
		config = function()
			require("mason-lspconfig").setup({})
		end,
	})

	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.lspconfig")
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		event = "BufRead",
		config = function()
			require("plugins.treesitter")
		end,
	})

	use({
		"windwp/nvim-ts-autotag", --autoclose html like tags
		after = "nvim-treesitter",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	})

	use({
		"hrsh7th/nvim-cmp",
		config = function()
			require("plugins.cmp")
		end,
	})

	use({
		"windwp/nvim-autopairs", --auto close special chars
		after = "nvim-cmp",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	use("tpope/vim-surround") --manipulate special chars around words
	use({
		"yamatsum/nvim-cursorline", --underline word under cursor
		config = function()
			require("plugins.cursorline")
		end,
	})
	use({ "andymass/vim-matchup", event = "CursorMoved" }) --highlight matching tags
	use("PeterRincker/vim-searchlight") --custom search highlights

	use({
		"L3MON4D3/LuaSnip",
		config = function()
			require("plugins.luasnip")
		end,
	})

	use("saadparwaiz1/cmp_luasnip")

	use("rafamadriz/friendly-snippets")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")

	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins.nvimTree")
		end,
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- themes
	use("navarasu/onedark.nvim")
	use("shaunsingh/nord.nvim")

	-- smooth scroll
	use({
		"karb94/neoscroll.nvim",
		event = "WinScrolled",
		config = function()
			require("neoscroll").setup()
		end,
	})

	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
end)
