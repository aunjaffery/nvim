-- need a map method to handle the different kinds of key maps
local function map(mode, combo, mapping, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, combo, mapping, options)
end
local opt = {}

--Nvim-tree toggle
map("n", "sf", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

--window navigation
map("n", "H", "<C-w>h", {silent = true})
map("n", "L", "<C-w>l", {silent = true})

--format the document
map("n", "<Leader>f", ":Neoformat<CR>", {silent = false})

--remove hightlights
map("n", "<Leader>h", ":nohl<CR>", {silent = false})

--buffer navigation
map("n", "<S-Tab>", ":BufferPrevious<CR>", {silent = true})
map("n", "<Tab>", ":BufferNext<CR>", {silent = true})
map("n", "J", ":BufferPrevious<CR>", {silent = true})
map("n", "K", ":BufferNext<CR>", {silent = true})
map("n", "D", ":BufferClose<CR>", {silent = true})
map("n", "<C-S-Left>", ":BufferMovePrevious<CR>", {silent = true})
map("n", "<C-S-Right>", ":BufferMoveNext<CR>", {silent = true})

--Move selected line
map("v", "K", ":move '<-2<CR>gv=gv", {noremap = true, silent = true})
map("v", "J", ":move '>+1<CR>gv=gv", {noremap = true, silent = true})

--remaping past to 0register
--map("v", "<Leader>y", ":!xclip -f -sel clip<CR>", {silent = false})
map("v", "<Leader>y", '"+y', {silent = false})

--deleting without copying
map("n", "x", '"_x', {silent = true})
map("n", "d", '"_d', {silent = true})
map("v", "d", '"_d', {silent = true})
map("n", "c", '"_c', {silent = true})
map("v", "c", '"_c', {silent = true})

--cut
map("n", "<Leader>d", '""d', {silent = true})
map("v", "<Leader>d", '""d', {silent = true})

--telescope
map("n", "F", [[<Cmd> Telescope find_files <CR>]], opt)
map("n", "<Leader>g", [[<Cmd>Telescope live_grep<CR>]], opt)
--map("n", "<Leader>fp", [[<Cmd>lua require('telescope').extensions.media_files.media_files()<CR>]], opt)
map("n", "<Leader>fh", [[<Cmd>Telescope help_tags<CR>]], opt)
map("n", "<Leader>fo", [[<Cmd>Telescope oldfiles<CR>]], opt)

--terminal toggle
map("n", "st", ":ToggleTerm<CR>", {silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {silent = true})
vim.api.nvim_set_keymap("t", "<expr><C-R>", '\'<C-\\><C-N>"\'.nr2char(getchar()).\'pi\'', {silent = true})

--
----save or quit with capital letters
--vim.cmd [[
--command! W w
--command!-bang Q q<bang>
--]]
pcall(vim.cmd, "command! W w")
pcall(vim.cmd, "command!-bang Q q<bang>")
