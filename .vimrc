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

" Don't use Arrow Keys anymore!
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
