local map = vim.keymap.set

map("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

map("n", "<leader>h", ":nohl<CR>", { desc = "Clear search highlights" })
--window navigation
map("n", "H", "<C-w>h", { silent = true })
map("n", "L", "<C-w>l", { silent = true })
-- go error snippet
map("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")
map("n", "<leader>ef", 'ofmt.Printf("%+v\\n",)<Esc>')
map("n", "<leader>ft", 'ofmt.Println()<Esc>')

--Move selected line
map("v", "K", ":move '<-2<CR>gv=gv", { noremap = true, silent = true })
map("v", "J", ":move '>+1<CR>gv=gv", { noremap = true, silent = true })

--remaping past to 0register
map("v", "<Leader>y", '"+y', { silent = false })

--deleting without copying
map("n", "x", '"_x', { silent = true })
map("n", "d", '"_d', { silent = true })
map("v", "d", '"_d', { silent = true })
map("n", "c", '"_c', { silent = true })
map("v", "c", '"_c', { silent = true })

--cut
map("n", "<Leader>d", '""d', { silent = true })
map("v", "<Leader>d", '""d', { silent = true })

pcall(vim.cmd, "command! W w")
pcall(vim.cmd, "command!-bang Q q<bang>")

local function toggle_filetype()
	local current_filetype = vim.bo.filetype
	if current_filetype == "html" then
		vim.bo.filetype = "templ"
	elseif current_filetype == "templ" then
		vim.bo.filetype = "html"
	else
		print("Current filetype is not html or templ")
	end
end

map("n", "<leader>cf", toggle_filetype, { desc = "Toggle between html and templ filetypes" })
