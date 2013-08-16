syntax enable
set gfn=Inconsolata:h13
set anti
set transparency=20

let g:SexyScroller_ScollTime = 10
SexyScrollerToggle

let gvimrclocal = expand("~/.gvimrc.local")
if filereadable( gvimrclocal)
    execute "source " . gvimrclocal
endif
