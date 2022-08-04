local g = vim.g

g.mapleader = ' '
g.maplocalleader = ' '

require('plugins')
require('nosuke/sets')
require('nosuke/colors')
require('nosuke/telescope')
require('nosuke/treesitter')
require('nosuke/lsp')
require('nosuke/remaps')
require('nosuke/formatter')
require('nosuke/autocommands')
require('nosuke/projects')
require('nosuke/lualine')
require('nosuke/cmp')
require('nosuke/dap')
