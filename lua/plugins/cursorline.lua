require('nvim-cursorline').setup {
  cursorline = {
    enable = false,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = false,
    min_length = 3,
    hl = { underline = true },
  }
}
