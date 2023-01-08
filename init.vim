set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

filetype plugin indent on
syntax on

set t_Co=256

" True color if available
let term_program=$TERM_PROGRAM

" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

autocmd VimEnter * NERDTree

call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdtree'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'

    " Completion / linters / formatters
    Plug 'plasticboy/vim-markdown'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Git
    Plug 'airblade/vim-gitgutter'
call plug#end()