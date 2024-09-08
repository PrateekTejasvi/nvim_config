local opt = vim.opt
local cmd = vim.cmd 

vim.g.mapleader=" "
opt.shortmess:append "sI"
opt.syntax="on"
opt.relativenumber=true
opt.number=true
opt.expandtab=true
opt.exrc=true
opt.guicursor="i:block"
opt.hlsearch = false
opt.errorbells=false
opt.belloff='all'
opt.tabstop=4
opt.softtabstop=4
opt.shiftwidth=4
opt.wildmenu=true
opt.wildignore={"*.exe","*.git","*.out"}
opt.termguicolors=true
opt.so=7
opt.langmenu='eng'
opt.ruler=true
opt.wb=false
opt.encoding='utf-8'
opt.fileformat='unix'
opt.backup=false
opt.swapfile=false
opt.background='dark'
opt.autoindent=true
opt.completeopt={"menuone","noselect"}
opt.splitright=true
opt.wrap=false
opt.shell='fish'
opt.signcolumn="yes"

cmd [[ 
    set clipboard+=unnamedplus

]]


