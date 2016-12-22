inoremap <C-j> <ESC>
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
inoremap <> <><ESC>i
inoremap <><> <></><LEFT><LEFT><LEFT><LEFT>


set number 
set tabstop=4
syntax on
set clipboard=unnamed

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

set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

"general
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('tpope/vim-surround')
call dein#add('scrooloose/syntastic')
call dein#add('kana/vim-smartinput')
call dein#add('kana/vim-operator-user')
call dein#add('kana/vim-textobj-user')

"color
call dein#add('tomasr/molokai')

"python
call dein#add('andviro/flake8-vim')
call dein#add('hynek/vim-python-pep8-indent')
call dein#add('davidhalter/jedi-vim')

"html
call dein#add('hokaccha/vim-html5validator')
call dein#add('mattn/emmet-vim')
call dein#add('open-browser.vim')
call dein#add('othree/html5.vim')
call dein#add('hail2u/vim-css3-syntax')
let g:user_emmet_settings = {
\	'variables' : {
\		'lang' : "ja"
\	},
\	'indentation' : '  '
\}
"javascript


" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
