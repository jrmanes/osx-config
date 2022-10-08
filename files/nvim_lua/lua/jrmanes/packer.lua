-- ------------------------------------------------------------------------
-- -----------------------------  Plugins ---------------------------------
-- ------------------------------------------------------------------------
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  ----------------------------------------------------------------------------
  -- Must Have
  use 'vim-airline/vim-airline' -- https://github.com/vim-airline/vim-airline
  use 'ctrlpvim/ctrlp.vim' --  https://github.com/ctrlpvim/ctrlp.vim
  use 'ryanoasis/vim-devicons' --  https://github.com/ryanoasis/vim-devicons + https://github.com/ryanoasis/nerd-fonts/

  -- Git
  use 'tpope/vim-commentary' --  https://github.com/tpope/vim-commentary
  use 'airblade/vim-gitgutter' --  https://github.com/airblade/vim-gitgutter
  use 'mkitt/tabline.vim' --  https://github.com/mkitt/tabline.vim
  use 'tommcdo/vim-fugitive-blame-ext'

  use 'windwp/nvim-autopairs'
  -- use 'mkitt/tabline.vim' -- https://github.com/mkitt/tabline.vim

  ----------------------------------------------------------------------------
  -- Vim-Poligot
  use 'sheerun/vim-polyglot' -- https://vimawesome.com/plugin/vim-polyglot

  ----------------------------------------------------------------------------
  -- Telescope requirements...
  --  use 'junegunn/fzf', { 'do': { -> fzf#install() } } -- FZF
  use 'junegunn/fzf' -- FZF
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } }
  use 'tpope/vim-surround' -- surround characters shortcuts
  -- use 'nvim-telescope/telescope.nvim'
  -- use 'tpope/vim-eunuch' -- wrappers UNIX commands
  -- use 'tpope/vim-vinegar' -- file browser

  ----------------------------------------------------------------------------
  -- LSP completion source for nvim-cmp
  use {
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
  }
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  -- use 'tzachar/cmp-tabnine', { 'do': './install.sh' }
  -- use("tzachar/cmp-tabnine", { run = "./install.sh" })
  use 'onsails/lspkind-nvim'
  use 'nvim-lua/lsp_extensions.nvim'

  ----------------------------------------------------------------------------
  --  Go
  --   use 'fatih/vim-go', { 'do': ':GoInstallBinaries' } -- https://github.com/fatih/vim-go
  --   use 'neoclide/coc.nvim', {'branch': 'release'}     -- https://github.com/neoclide/coc.nvim
  use 'fatih/vim-go' -- https://github.com/fatih/vim-go
  -- use 'neoclide/coc.nvim'  -- https://github.com/neoclide/coc.nvim
  -- use { 'neoclide/coc.nvim', { branch = 'release' } } -- https://github.com/neoclide/coc.nvim
  use 'SirVer/ultisnips' -- https://github.com/sirver/UltiSnips
  use 'darrikonn/vim-gofmt'

  ----------------------------------------------------------------------------
  -- Rust
  use 'simrat39/rust-tools.nvim'
  use 'rust-lang/rust.vim'

  ----------------------------------------------------------------------------
  -- Themes
  use 'gruvbox-community/gruvbox' -- Gruvbox theme
  use 'luisiacc/gruvbox-baby'
  use 'NLKNguyen/papercolor-theme' -- https://github.com/NLKNguyen/papercolor-theme
  use 'jim-at-jibba/ariake-vim-colors'
  use 'sainnhe/sonokai'
  use 'sainnhe/gruvbox-material'
  use 'shaunsingh/nord.nvim'
  use 'cocopon/iceberg.vim'
  use 'jim-at-jibba/ariake-vim-colors'
  --  use 'catppuccin/nvim', {'as': 'catppuccin'} -- https://github.com/catppuccin/nvim
  use 'catppuccin/nvim' -- https://github.com/catppuccin/nvim
  use 'tpope/vim-projectionist'
  use 'tomlion/vim-solidity'
  --  use 'folke/tokyonight.nvim', { 'branch': 'main' } -- https://github.com/folke/tokyonight.nvim

  -- Tree file viewer
  use 'kyazdani42/nvim-web-devicons' -- icons when searching
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'

  ----------------------------------------------------------------------------
  ---- Sidebar
  use 'preservim/nerdtree'
  -- use { 'preservim/nerdtree', { on = "NERDTreeToggle" } }
  -- use {
  --   'romgrk/barbar.nvim',
  --   requires = { 'kyazdani42/nvim-web-devicons' }
  -- }

  ----------------------------------------------------------------------------
  -- Other
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    --  run = ':TSUpdate'
  }

  use 'akinsho/nvim-bufferline.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
end)
