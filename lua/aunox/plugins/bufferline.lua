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
    local km = vim.keymap
    km.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })
    km.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
    km.set("n", "J", ":BufferLineCyclePrev<CR>", { silent = true })
    km.set("n", "K", ":BufferLineCycleNext<CR>", { silent = true })
    km.set("n", "D", ":bd<CR>", {silent = false})
    km.set("n", "<C-S-Left>", ":BufferLineMovePrev<CR>", { silent = true })
    km.set("n", "<C-S-Right>", ":BufferLineMoveNext<CR>", { silent = true })
  end
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
--     km.set("n", "<S-Tab>", ":BufferPrevious<CR>", { silent = true })
--     km.set("n", "<Tab>", ":BufferNext<CR>", { silent = true })
--     km.set("n", "J", ":BufferPrevious<CR>", { silent = true })
--     km.set("n", "K", ":BufferNext<CR>", { silent = true })
--     km.set("n", "D", ":BufferClose<CR>", {})
--     km.set("n", "<C-S-Left>", ":BufferMovePrevious<CR>", { silent = true })
--     km.set("n", "<C-S-Right>", ":BufferMoveNext<CR>", { silent = true })
--   end
-- }
