" Enter the Current Millennium
set nocompatible
syntax enable
filetype plugin on

set background=dark
let base16colorspace=256
let g:gruvbox_italic=1
set termguicolors
colorscheme gruvbox

set autochdir           " Open Terminal in current dir
set autoread            " Autoread file if edited outside vim
set ignorecase          " Case Sensitive only if capital letter in search
set linebreak           " wrap lines at words
set mouse=a             " Use Mouse in all modes
set mousefocus          " Window with mouse is autofocused
set noswapfile          " Don't create Swapfiles
set showcmd             " Shows <leader> key timeout
set showmatch           " Shows matching parenthesis
set spell               " Enable Spell check
set spelllang=en_gb     " Use British English

set autoindent          " New lines inherit indentation
set expandtab           " Convert tabs to spaces
set softtabstop=4       " On <BS>, pretend like a tab is removed, even if spaces

set relativenumber number
set scrolloff=4 sidescrolloff=5
set splitbelow splitright

" Edit/Source my Vimrc file
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>so :w<cr>:so %<cr>

autocmd TermOpen * setlocal nonumber norelativenumber nospell
autocmd VimEnter * silent! !setxkbmap -option caps:swapescape

" Plugins installed with `vim-plug`
call plug#begin()

" {{ Tim Pope Plugins }}

Plug 'tpope/vim-repeat'
" Comment using `gc`
Plug 'tpope/vim-commentary'
" Change/Delete/Insert surroundings with using `cs`/`ds`/`ys`
Plug 'tpope/vim-surround'
" Exchange two pieces of text with `cx{motion}`, cancel with `cxc`
Plug 'tommcdo/vim-exchange'

" Highlight yank for visual feedback
Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 400

" Switch between line/multiline statements with `gS` and `gJ`
Plug 'AndrewRadev/splitjoin.vim'

" Auto-complete brackets
Plug 'tmsvg/pear-tree'
let g:pear_tree_smart_backspace = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_openers = 1
let g:pear_tree_pairs = { '(': {'closer': ')'}, '[': {'closer': ']'},
                        \ '{': {'closer': '}'}, "'": {'closer': "'"},
                        \ '<': {'closer': '>'}, '"': {'closer': '"'}}

Plug 'Chiel92/vim-autoformat'
let g:formatter_yapf_style = 'facebook'
autocmd BufWrite *.go,*.rs :Autoformat
nnoremap <leader>w :w<cr>:Autoformat<cr>

" Syntax highlighting for Python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'rust-lang/rust.vim'

Plug 'ycm-core/YouCompleteMe'

call plug#end()

" Exit/Navigate from terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w>h <C-\><C-N><C-w>h
tnoremap <C-w>j <C-\><C-N><C-w>j
tnoremap <C-w>k <C-\><C-N><C-w>k
tnoremap <C-w>l <C-\><C-N><C-w>l

" Foster good habits: No more arrow keys!
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

