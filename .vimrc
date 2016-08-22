set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

Plugin 'VundleVim/Vundle.vim'
" let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'reedes/vim-thematic'
" Theme management plugin
Plugin 'Raimondi/delimitMate'
" Automtic closing of quotes, parenthesis, brackets, etc.
" Track the engine.
Plugin 'scrooloose/syntastic'
" Syntax Error highlighting



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Syntastic Settings
let g:syntastic_check_on_open = 1
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_error_symbol = "✗"

"ENABLE 256 colors
set t_Co=256

" Tab settings
set nu
set ts=4
set expandtab
set shiftwidth=4
set autoindent
filetype indent off

" Remaps for split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
