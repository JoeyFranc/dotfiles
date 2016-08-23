set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins "call vundle#begin('~/some/path/here')

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
Plugin 'octol/vim-cpp-enhanced-highlight'
" C++ Syntax Enhancement
Plugin 'vim-airline/vim-airline'
" Doped-out command bar



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required 
" To ignore plugin indent changes, instead use: "filetype plugin on

" DelimitMate Settings
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 2
let delimitMate_jump_expansion = 1

" Syntastic Settings
let g:syntastic_check_on_open = 1
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_error_symbol = '❌'

" Enhance C++ syntax highlighting
let g:cpp_class_scope_highlight = 1
" Add highlighting for function definition in C++
" function! EnhanceCppSyntax()
"     syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
"     hi def link cppFuncDef Special
" endfunction
"
" autocmd Syntax cpp call EnhanceCppSyntax()

" ENABLE 256 colors
set t_Co=256

" Enable Airline by default
set laststatus=2

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
