vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
  function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Fuzzy finder
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- syntax
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
    
    -- prettier
    use {
      'prettier/vim-prettier',
      run = 'yarn install'
    }

    -- language server protocol
    use 'neovim/nvim-lspconfig'

    -- completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'

    -- lua snip
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- airline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- Gruvbox color scheme
    use 'gruvbox-community/gruvbox'
  end
)
