vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }

  --use 'jiangmiao/auto-pairs'
  --use 'mg979/vim-visual-multi'

  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'xuyuanp/nerdtree-git-plugin'

  use 'KabbAmine/vCoolor.vim'

  use 'nvim-lualine/lualine.nvim'

  use
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use
  {
    'neoclide/coc.nvim',
    branch = 'release'
  }
  --use 'ellisonleao/gruvbox.nvim'
  --use 'gruvbox-community/gruvbox.nvim'
  use 'andweeb/presence.nvim'
  use 'p00f/nvim-ts-rainbow'
  use 'nvim-treesitter/playground'
  use 'nanozuki/tabby.nvim'
  use
  {
    'nvim-telescope/telescope.nvim',
    requires =
    {
      'nvim-lua/plenary.nvim',
      'sharkdp/fd',
    }
  }

  if PACKER_BOOTSTRAP then
    require'packer'.sync()
  end
end)
