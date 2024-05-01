local km = vim.keymap

km.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

km.set("n", "<leader>h", ":nohl<CR>", { desc = "Clear search highlights" })
--window navigation
km.set("n", "H", "<C-w>h", { silent = true })
km.set("n", "L", "<C-w>l", { silent = true })
-- go error snippet
km.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")
km.set("n", "<leader>ef", 'ofmt.Printf("%+v\\n",)<Esc>')

--Move selected line
km.set("v", "K", ":move '<-2<CR>gv=gv", { noremap = true, silent = true })
km.set("v", "J", ":move '>+1<CR>gv=gv", { noremap = true, silent = true })

--remaping past to 0register
km.set("v", "<Leader>y", '"+y', { silent = false })

--deleting without copying
km.set("n", "x", '"_x', { silent = true })
km.set("n", "d", '"_d', { silent = true })
km.set("v", "d", '"_d', { silent = true })
km.set("n", "c", '"_c', { silent = true })
km.set("v", "c", '"_c', { silent = true })

--cut
km.set("n", "<Leader>d", '""d', { silent = true })
km.set("v", "<Leader>d", '""d', { silent = true })

--terminal toggle
km.set("n", "st", ":ToggleTerm<CR>", { silent = true })
km.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })
km.set("t", "<expr><C-R>", "'<C-\\><C-N>\"'.nr2char(getchar()).'pi'", { silent = true })

pcall(vim.cmd, "command! W w")
pcall(vim.cmd, "command!-bang Q q<bang>")
