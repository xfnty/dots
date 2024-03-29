-- General options --
vim.opt.smartcase = true;
vim.opt.showmatch = true;
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.wrap = false
--vim.opt.colorcolumn = "80"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = ""

vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = "cp -r"
vim.g.netrw_list_hide = "\\./,\\.\\./"
vim.g.netrw_hide = true

vim.g.autowrite = true

require("xfnty/remaps")
require("xfnty/plugins")

