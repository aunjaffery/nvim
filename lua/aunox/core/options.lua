local opt = vim.opt

opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.updatetime = 300

--opt.showtabline = 2
vim.filetype.add({ extension = { templ = "templ" } })

-- only for alacritty terminal
local alacrittyAutoGroup = vim.api.nvim_create_augroup("alacritty", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
	group = alacrittyAutoGroup,
	callback = function()
		vim.fn.system(
			"alacritty msg --socket $ALACRITTY_SOCKET config -w $ALACRITTY_WINDOW_ID options 'window.padding.x=0' 'window.padding.y=0' 'window.dynamic_padding=false'"
		)
	end,
})
vim.api.nvim_create_autocmd("VimLeavePre", {
	group = alacrittyAutoGroup,
	callback = function()
		vim.fn.jobstart("alacritty msg --socket $ALACRITTY_SOCKET config -w $ALACRITTY_WINDOW_ID -r", { detach = true })
	end,
})
vim.api.nvim_create_autocmd({ "FileType" }, {
	callback = function()
		-- check if treesitter has parser
		if require("nvim-treesitter.parsers").has_parser() then
			-- use treesitter folding
			vim.opt.foldmethod = "expr"
			vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
		else
			-- use alternative foldmethod
			vim.opt.foldmethod = "syntax"
		end
	end,
})
vim.opt.foldenable = false
vim.opt.foldlevel = 20
