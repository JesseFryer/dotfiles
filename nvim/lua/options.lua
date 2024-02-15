local opt = vim.opt

-- Indentation and Line
opt.relativenumber = true
opt.smartindent = true
opt.expandtab = true
opt.autoindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.signcolumn = "number"

-- Appearance
opt.colorcolumn = "79"
vim.cmd[[TransparentEnable]]

-- Behaviour
opt.scrolloff = 10
opt.encoding = "UTF-8"
opt.mouse = "r"
opt.path = opt.path + "**"

-- Colourscheme
vim.cmd[[colorscheme tokyonight-storm]]
