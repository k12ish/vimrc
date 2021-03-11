set nocompatible
set noswapfile

syntax enable
set background=dark
let base16colorspace=256
set termguicolors

set showcmd    " shows <leader> key timeout

set expandtab  " Convert tabs to spaces
set autoindent " New lines inherit indentation

" Number of lines and chars to keep around cursor
set scrolloff=4 sidescrolloff=5

" Hybrid line numbering
set relativenumber number

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
set autoread

" Edit my Vimrc file
nnoremap <leader>ev :split $MYVIMRC<cr>

" New buffer opens below/right
set splitbelow splitright

" Exit/Navigate from terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w>h <C-\><C-N><C-w>h
tnoremap <C-w>j <C-\><C-N><C-w>j
tnoremap <C-w>k <C-\><C-N><C-w>k
tnoremap <C-w>l <C-\><C-N><C-w>l

autocmd TermOpen * setlocal nonumber norelativenumber

" Foster good habits: Remove functionality of arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Plugins installed with `vim-plug`
call plug#begin()

" Auto-complete brackets
Plug 'tmsvg/pear-tree'
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1

Plug 'Chiel92/vim-autoformat'
let g:formatter_yapf_style = 'facebook'
autocmd BufWrite *.go,*.rs :Autoformat
nnoremap <leader>w :w<cr>:Autoformat<cr>

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'rust-lang/rust.vim'

" Switch between line/multiline statements with `gS` and `gJ`
Plug 'AndrewRadev/splitjoin.vim'

" {{ Tim Pope Plugins }}
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

call plug#end()

" colorscheme base16-material-darker
colorscheme gruvbox
" Linux specific
:autocmd VimEnter * silent! !setxkbmap -option caps:swapescape

