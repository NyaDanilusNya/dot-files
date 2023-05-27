vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  use 
  {
    'scrooloose/nerdtree',
    cmd = 'NERDTreeToggle'
  }

  use 'jiangmiao/auto-pairs'
  --use 'vim-airline/vim-airline'
  use 'ryanoasis/vim-devicons'
  --use 'mg979/vim-visual-multi'
  --
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'xuyuanp/nerdtree-git-plugin'

  use 'KabbAmine/vCoolor.vim'
  --use 'williamboman/mason.nvim'
  --use 'williamboman/mason-lspconfig.nvim'

  use 'nvim-lualine/lualine.nvim'

  --use 'onsails/lspkind.nvim'
  --use 'hrsh7th/cmp-buffer'
  --use 'hrsh7th/cmp-nvim-lsp'
  --use 'hrsh7th/cmp-path'
  --use 'hrsh7th/cmp-cmdline'
  --use 'hrsh7th/nvim-cmp'
  --use 'saadparwaiz1/cmp_luasnip'
  --use 'neovim/nvim-lspconfig'
  --use 'L3MON4D3/LuaSnip'
--[[
  use {
  'nvim-treesitter/nvim-treesitter',
  run = function()
    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    ts_update()
  end,
  }
  ]]
  --[[
  use 
  {
    'nvim-treesitter/nvim-treesitter',
    ["do"] = ':TSUpdate'
  }
  ]]
  --use 'williamboman/nvim-lsp-installer'
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }
  --use 'dylanaraps/wal.vim'
  --use 'ellisonleao/gruvbox.nvim'
  use 'gruvbox-community/gruvbox'
end)
