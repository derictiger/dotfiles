" Eric Geiger vimrc
" vim-plug {{{
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'itchyny/lightline.vim'
Plug 'vim-latex/vim-latex'
call plug#end()
" }}}
" Colors {{{
syntax enable " enable syntax processing
set background=dark
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }
" }}}
" Spaces and Tabs {{{
filetype plugin on
filetype indent on
let g:tex_flavor='latex'
" }}}
" UI Config {{{
set number " Show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
filetype indent on "load filetype-specific indent files
set wildmenu " visual autocomplete
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
" }}}
" Searching {{{
set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<cr>
" }}}
" Folding {{{
set foldmethod=indent " fold based on indent level
set foldnestmax=10 " max 10 depth
set foldenable " enable folding
"space open/closes folds
nnoremap <space> za
" }}}
" Movement {{{
"move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap <leader>b ^
nnoremap <leader>e $
" highlight last inserted text
nnoremap gV '[v']
" }}}
" Leader shortcuts {{{
" jk is escape
inoremap kj <esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<cr>
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>ez :vsp ~/.zshrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
"save session
nnoremap <leader>s :mksession<cr>
" }}}
" look into ag.vim
" look into CtrlP

set modelines=1
" vim:foldmethod=marker:foldlevel=0
