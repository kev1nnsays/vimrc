"set t_Co=256
"colo obsidian2
"set background=dark
"highlight Normal ctermfg=grey ctermbg=black
"hi Normal ctermfg=grey ctermbg=none
set t_Co=256
syntax on 

filetype indent on
set autoindent

set number
set cursorline
set showcmd
set showmatch
set hlsearch

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent "python 

"filetype indent on
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

colorscheme molokai 


if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
    \ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))

    " Use the guicolorscheme plugin to makes 256-color or 88-color
    " terminal use GUI colors rather than cterm colors.
    runtime! plugin/guicolorscheme.vim
"    GuiColorScheme hax
else
    " For 8-color 16-color terminals or for gvim, just use the
    " regular :colorscheme command.

    colorscheme default
endif
