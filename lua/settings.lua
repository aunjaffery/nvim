local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= "o" then
        scopes["o"][key] = value
    end
end

opt("o", "background", "dark")
--vim.cmd("syntax enable")
opt("o", "number", true) --set number line
opt("o", "termguicolors", true) --support 256 colors
opt("o", "wildmenu", true) --cmdline compilition
opt("o", "backup", false) --no tilde files
opt("o", "writebackup", false) --no tilde files
opt("o", "wrap", false) --no wraping lines
opt("o", "showmode", false) --no --INSERT Prompt
opt("o", "splitright", true) --open vsplits in a more natural spot
opt("o", "splitbelow", true) --open hsplits in a more natural spot
opt("o", "hidden", true) --ommit warning of unsaved changes when opening new buffer
opt("o", "cmdheight", 1) --Height of the command prompt btm
opt("o", "updatetime", 300) --default is 4000 ms
vim.opt.shortmess:append({c = true})
vim.opt.completeopt = {"menuone", "noselect"}
opt("o", "signcolumn", "yes") --Always show the signcolumn, otherwise it would shift the text
opt("o", "showtabline", 2) --Always show tabs
-- opt("o", "mouse", "a") --Mouse scrol

local indent = 2
opt("b", "tabstop", indent)
opt("b", "shiftwidth", indent)
opt("b", "softtabstop", indent)

vim.g.matchup_matchparen_offscreen = {"method", "popup"}
