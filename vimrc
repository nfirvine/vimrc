syntax enable
set sw=4
set et
set ts=4
set ai
set ai
set tw=99
colorscheme ir_black

" highlight overlong lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

function! RemoveVerboseCruft()
   %s/    /  /g 
   %s/\s*\/\/[=-]\+\s*\n//g
   %s/\s*\n\s*{/ {/g
endfunction

nmap <silent> \c :call RemoveVerboseCruft()<CR>

filetype plugin indent on

let $P4CLIENT = "nirvine0"

" Disable vimp4python cuz it whines a lot
let loaded_vimp4python=1

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=0x%04B\  "byte value under cursor
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

set laststatus=2

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle 'joeytwiddle/sexy_scroller.vim'
"Bundle 'scrooloose/syntastic.git'
"Bundle 'davidhalter/jedi-vim'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'klen/python-mode.git'

Bundle 'fholgado/minibufexpl.vim'

map <Leader>e :MBEOpen<cr>
map <Leader>c :MBEClose<cr>
map <Leader>t :MBEToggle<cr>

let vimrclocal = expand("~/.vimrc.local")
if filereadable( vimrclocal)
    execute "source " . vimrclocal
endif



