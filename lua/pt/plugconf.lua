local Plug = vim.fn['plug#'] 

vim.call('plug#begin','~/.config/nvim/plugged')
--Treesitter stuff

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-treesitter/playground'
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
--Terminal
Plug "NvChad/nvterm"

--Themes

Plug ('folke/tokyonight.nvim', {[ 'branch']= 'main' })
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/lsp-colors.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'joshdick/onedark.vim'
Plug 'catppuccin/nvim'

--Formating

Plug 'numToStr/Comment.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'lukas-reineke/indent-blankline.nvim'

--File Navigation
Plug ('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.4' })
Plug ('nvim-telescope/telescope-fzf-native.nvim',{run = 'make'})
Plug 'nvim-telescope/telescope-file-browser.nvim'

--LSP/AUTOCOMPLETION

Plug 'VonHeikemen/lsp-zero.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'saadparwaiz1/cmp_luasnip'
Plug ('dsznajder/vscode-es7-javascript-react-snippets', { ['do'] = 'yarn install --frozen-lockfile && yarn compile' })

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/nvim-cmp'
Plug "folke/trouble.nvim"
Plug "sbdchd/neoformat"


vim.call('plug#end')
vim.cmd[[
 colorscheme catppuccin-macchiato

]]




--Trouble,nvim setup-- 
require('trouble').setup{
    mode = "document_diagnostics",
    auto_open = true
}
