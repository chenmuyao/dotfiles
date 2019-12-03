" This is my vimrc file

" hls : highlight search results
" is(incsearch) : While typing a search command, show where the pattern, as it was so far, matches.
" ic : igonre case
set hls is ic
" display line number
set number
" wrap the long line
set wrap

" resolve the vim tmux color problem
set background=dark

" Solve the paste - autoindent problem
set pastetoggle=<F2>

" Don't use Arrow Keys anymore!
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set tabstop=2 shiftwidth=2 expandtab " The width of a TAB is set to 2.

" nvim specific configs
if !has('nvim')
    set ttymouse=xterm2
endif




" VIM Plugins
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
if !has('nvim')
    Plug 'tpope/vim-sensible'
endif
Plug 'junegunn/seoul256.vim' " Change vim color
Plug 'scrooloose/nerdtree'   " file browser
Plug 'dense-analysis/ale'    " linter and correcter
Plug 'tpope/vim-fugitive'    " git support
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' } " in plugged/you.. do 'python3 install install.py --clangd-completer'
Plug 'sheerun/vim-polyglot'  " syntax support
Plug 'tpope/vim-surround'    " pairing
Plug 'raimondi/delimitmate'  " auto-close
" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" Config seoul256
let g:seoul256_background=235
colo seoul256 
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
" seoul256 (light):
"   Range:   252 (darkest) ~ 256 (lightest)
"   Default: 253

" Config nerdtree
let NERDTreeShowHidden=1  "  Always show dot files
let NERDTreeQuitOnOpen=1
map  <Leader>n  :NERDTreeFind<CR>
"autocmd vimenter * NERDTree

" Config deoplete
let g:deoplete#enable_at_startup = 1
