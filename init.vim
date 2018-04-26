" Should always be here
set nocompatible

" --- Plugins ---
" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')

" general amazingness
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'sheerun/vim-polyglot'
Plug 'wellle/targets.vim'
" Auto-close {} with swanky fly mode
Plug 'jiangmiao/auto-pairs'
let g:AutoPairsFlyMode=1
" ezpz file search
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrp_map = '<c-p>'
" autocomplete
Plug 'Shougo/deoplete.nvim'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
let g:deoplete#enable_at_startup=1
" let g:neosnippet#enable_completed_snippet=1
" linting
Plug 'w0rp/ale'
" git diffing
Plug 'airblade/vim-gitgutter'
" status bars
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
" swanky colors
Plug 'rakr/vim-one'
" Plug 'challenger-deep-theme/vim', {'as': 'challenger_deep'}
" Interface
" Plug 'Shuogo/denite.nvim'

call plug#end()

" --- General Settings ---
filetype plugin indent on
syntax enable
syntax on
set number
set number relativenumber
set colorcolumn=150
set smartindent
set wildignore+=*\\node_modules\\*
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch
set hid
" show status bar
set laststatus=2
" Allow mouse
set mouse=a
" <tab> to <space>s
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
"Swanky colors
colorscheme one
set background=dark
" let g:airline_theme='one'

""""""""""""""""""""""""""""""""""" Key mappings
" Enable ctrl-p ctrl-v
if has("win32")
    source $VIMRUNTIME/mswin.vim
    behave mswin
    au GUIEnter * simalt ~x
endif
" Press Enter to insert a newline below/above in NORMAL mode
nmap <Enter> o<Esc>
nmap <S-Enter> O<Esc>
" Quick jumping to any buffer
nnoremap gb :ls<CR>:b<Space>
" Ctl-Tab to switch buffer
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bN<CR>
" Clear search highlighting on <esc>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Shortcut to open _vimrc
nmap <leader>v :tabe $MYVIMRC <Enter>
" Shortcut to open netrw
nmap <leader>e :Explore<CR>

""""""""""""""""""""""""""""""""""" nvim-qt specific settings
" Maximize Window
if exists('g:GuiLoaded')
  call GuiWindowMaximized(1)
endif

