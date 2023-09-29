require("plugins")

require("comment")
require("commentstring")
require("format")
require("fzf")
require("linter")
require("lsp")
require("mason_cfg")
require("treesitter")

vim.opt.path = vim.opt.path + "**"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 5

vim.opt.showtabline = 2

vim.opt.background = "dark"
vim.cmd("colorscheme tokyonight-night")

vim.opt.spell = true
vim.opt.spelllang = "en_us"
