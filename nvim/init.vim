call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'tpope/vim-surround'
call plug#end()

" set colormode
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif

    if (has("termguicolors"))
        set termguicolors
    endif

endif
" configure gurvbox
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_termcolors = "256"

set nocompatible

" theme
colorscheme gruvbox

" syntax highlighting
syntax on

" default file encoding
set encoding=utf-8

" line wrap
set wrap

" auto and smart indent
set autoindent
set smartindent

" mouse support
set mouse=a

" disable buckups
set nobackup
set nowritebackup

filetype plugin indent on

set updatetime=300
set hidden
set noshowmode

" show relative line numbers
set number relativenumber
set numberwidth=2

set signcolumn=number
set spelllang=en
set spellsuggest=best
set wildmode=list
" set cc=80
set ruler

" move line up/down
nnoremap <C-Up>  :m-2<CR>
nnoremap <C-Down>  :m+<CR>
inoremap <C-Up> <Esc>:m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>
vnoremap <C-Up> :m '<-2<CR>gv=gv
vnoremap <C-Down> :m '>+<CR>gv=gv

set tabstop=4 shiftwidth=4 expandtab

lua require'colorizer'.setup()

let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }
