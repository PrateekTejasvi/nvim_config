require("pt")
vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append"tab»."
vim.opt.listchars:append "eol:↴"
vim.cmd[[
source ~/.config/nvim/remap.vim
let g:netrw_lifestyle=3
source ~/.config/nvim/after/plugin/config_telescope.lua
autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.lua Neoformat
highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none
]]


