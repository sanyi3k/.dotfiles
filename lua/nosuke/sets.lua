local opt = vim.opt
local wo = vim.wo

opt.relativenumber = true
opt.nu = true
opt.hlsearch = false
opt.hidden = true
opt.errorbells = false
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.wrap = false
opt.incsearch = true
opt.termguicolors = true
opt.scrolloff = 10
wo.signcolumn = 'yes'
wo.colorcolumn = '100'
opt.cmdheight = 2
opt.completeopt = "menu,menuone,noselect"
local function status_line()
    return "%= %m %f"
end
opt.winbar = status_line()
