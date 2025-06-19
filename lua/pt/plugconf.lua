local Plug = vim.fn['plug#'] 

vim.call('plug#begin','~/.config/nvim/plugged')
--Treesitter stuff
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-treesitter/playground'
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
--Terminal
Plug "akinsho/toggleterm.nvim"
--Themes
Plug 'catppuccin/nvim'
Plug 'loctvl842/monokai-pro.nvim'
Plug ('folke/tokyonight.nvim', {[ 'branch']= 'main' })
Plug 'marko-cerovac/material.nvim'
Plug 'projekt0n/github-nvim-theme'
-- Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'folke/lsp-colors.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'navarasu/onedark.nvim'
--Formating
Plug 'numToStr/Comment.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'windwp/nvim-ts-autotag'
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
--AUTOCOMPLETION
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/nvim-cmp'
Plug "sbdchd/neoformat"
vim.call('plug#end')
vim.cmd[[ 
    colorscheme material-darker 
]]


require'nvim-web-devicons'.setup {
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 color_icons = true;
 default = true;
 strict = true;
 override_by_filename = {
  [".gitignore"] = {
    icon = "",
    color = "#f1502f",
    name = "Gitignore"
  }
 };
 override_by_extension = {
  ["log"] = {
    icon = "",
    color = "#81e043",
    name = "Log"
  }
 };
 override_by_operating_system = {
  ["apple"] = {
    icon = "",
    color = "#A2AAAD",
    cterm_color = "248",
    name = "Apple",
  },
 };
}
