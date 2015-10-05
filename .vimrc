set nocompatible
filetype off
set ruler

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/TaskList.vim'
Plugin 'yggdroot/indentline'
Plugin 'tpope/vim-fugitive'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate.git'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

set number
set ignorecase
set smartcase
syntax on

set cursorline

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch

set t_Co=256
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:indentLine_color_term = 239

"let g:UltiSnipsExpandTrigger="<c-n>"
"let g:UltiSnipsJumpForwardTrigger="<c-b"
"let g:UltiSnipsJumpBackwardTrigger="<c-z"

nmap <F3> :TagbarToggle<CR>
nmap <F5> :NERDTreeToggle<CR>
nmap <F4> :TaskList<CR>
nmap <F6> :CtrlP <CR>
inoremap jj <Esc>

au BufNewFile,BufRead * set textwidth=80
au BufNewFile,BufRead *.tex set textwidth=80
au BufNewFile,BufRead *.tex set spell
au BufNewFile,BufRead *.py set wrapmargin=20
au BufNewFile,BufRead *.cpp set textwidth=80
au BufNewFile,BufRead *.hpp set textwidth=80

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'


set laststatus=2 ruler showcmd
