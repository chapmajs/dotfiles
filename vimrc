syntax on
set wrap
set linebreak
set nolist
colorscheme elflord

map <silent> <Up> gk
imap <silent> <Up> <C-o>gk
map <silent> <Down> gj
imap <silent> <Down> <C-o>gj
map <silent> <home> g<home>
imap <silent> <home> <C-o>g<home>
map <silent> <End> g<End>
imap <silent> <End> <C-o>g<End>

setlocal display+=lastline

filetype indent on
set expandtab
set ts=2
set shiftwidth=2
set softtabstop=2

autocmd BufRead,BufNewFile   Makefile set noexpandtab
