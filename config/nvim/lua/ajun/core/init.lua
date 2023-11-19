local opt = vim.opt
local g = vim.g

g.mapleader = ' '

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.cursorline = true
opt.number = true
opt.termguicolors = true
opt.clipboard = 'unnamedplus'

require("ajun.core.keymap")
