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

" Enable mouse
set mouse=a

" Don't use Arrow Keys anymore!
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" moving from tab to tab more logically
nnoremap <C-W><C-L> :tabnext<CR>
nnoremap <C-W><C-H> :tabprevious<CR>


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
  Plug 'Xuyuanp/nerdtree-git-plugin' " Git integration for nerdtree
Plug 'tpope/vim-fugitive'    " git support
Plug 'airblade/vim-gitgutter' " git in live
Plug 'dense-analysis/ale'    " linter and correcter
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' } " in plugged/you.. do 'python3 install install.py --clangd-completer'
Plug 'sheerun/vim-polyglot'  " syntax support
Plug 'tpope/vim-surround'    " pairing
Plug 'raimondi/delimitmate'  " auto-close
Plug 'vim-scripts/fcitx.vim'  " chinese input method

" Plug 'mbbill/undotree'
" Plug 'tpope/vim-unimpaired'
" Plug 'editorconfig/editorconfig-vim'

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
let NERDTreeHighlightCursorline=1

let NERDTreeCustomOpenArgs={'file':{'where': 't'}, 'dir':{}}
" Toggle between NerdTree and the current file
nnoremap  <Leader>n  :NERDTreeToggle<CR> 
" locate the actual file in NerdTree
nnoremap <silent> <Leader>f :NERDTreeFind<CR>
"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " quit vim if nerdtree is the only buffer opened
" start nerdtree if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

