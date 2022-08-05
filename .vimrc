set nocompatible
set relativenumber
set number

filetype plugin indent on

" default nowrap
set nowrap

" Show existing tab with 4 spaced width
set tabstop=4

" When indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Search down into subdirs
" Provides tab completion for all file-related tasks
set path+=**

" Display all matching files when tab completing
set wildmenu


call plug#begin()
    Plug 'preservim/nerdtree'                                              " File tree
    Plug 'godlygeek/tabular'                                               " Align stuff
    Plug 'preservim/vim-markdown'                                          " Markdown plugin
    Plug 'dhruvasagar/vim-table-mode'                                      " Align tables automatically
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' } " Mardkown preview
    Plug 'tpope/vim-surround'                                              " Surround objects (by quotes, parentheses, etc.)
    Plug 'ledger/vim-ledger'                                               " Ledger plugin
    Plug 'dracula/vim', { 'as': 'dracula' }                                " Dracula theme
    Plug 'morhetz/gruvbox'                                                 " Gruvbox theme
call plug#end()

" set color theme
syntax enable
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark


" vim-table-mode Md compatible tables
let g:table_mode_corner='|' 

" Make sure space does not have any other mapping and map it to be the leader
" key
nnoremap <SPACE> <Nop>
let mapleader=" "

" Line cursor in insert mode
let &t_SI = "\e[6 q""
" Block cursor in other modes
let &t_EI = "\e[2 q""

" abbreviations
autocmd FileType markdown iabbrev -> $\rightarrow$
autocmd FileType markdown iabbrev -- –
autocmd FileType markdown iabbrev ~~ &nbsp;
autocmd FileType markdown iabbrev ... …



