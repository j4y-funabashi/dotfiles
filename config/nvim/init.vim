" ----- Required
if &compatible
  set nocompatible
endif

" ----- Leader
let g:mapleader="\<Space>"
let g:maplocalleader=';'

" ----- Plugins
call plug#begin('~/.vim/plugged')

Plug 'sainnhe/everforest'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'rafamadriz/friendly-snippets'

Plug 'fatih/vim-go'

Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

"-- general
set number relativenumber
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"-- searching
set ignorecase      " Search ignoring case
set smartcase       " Keep case when searching with *
set infercase       " Adjust case in insert completion mode
set incsearch       " Incremental search
set wrapscan        " Searches wrap around the end of the file
set complete=.,w,b  " C-n completion: Scan buffers and windows

"-- theme
set background=dark
set termguicolors
colorscheme everforest

set completeopt=menu,menuone,noselect



lua << END
require'lualine'.setup()
END
