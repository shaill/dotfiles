inoremap <C-j> <Esc>
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap {<Enter> {}<LEFT><CR><ESC><S-o>
inoremap () ()<LEFT>
inoremap (), (),<LEFT><LEFT>
inoremap (): ():<LEFT><LEFT>
inoremap (<Enter> ()<LEFT><CR><ESC><S-o>
inoremap "" ""<ESC>i
inoremap "", "",<LEFT><LEFT>
inoremap "": "":<LEFT><LEFT>
inoremap '' ''<ESC>i
inoremap '', '',<LEFT><LEFT>


set number 
set tabstop=4
syntax on

colorscheme koehler
"search
set ignorecase
set smartcase
set incsearch
set hlsearch

"edit
set infercase
set showmatch
set matchtime=3
set matchpairs& matchpairs+=<:>

set backspace=indent,eol,start
set nowritebackup
set	nobackup
set noswapfile


"OCtave syntax
augroup filetypedetect
	au!BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END
if has("autocmd")&&exists("+omnifunc")
	autocmd Filetype octave
	\if &omunifunc=="" |
	\setlocal omnifunc=syntaxcomplete#Complete|
	\endif
endif
