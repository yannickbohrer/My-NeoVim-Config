vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } },
    }
}
