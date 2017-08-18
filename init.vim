" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/joey/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/joey/.vim/bundles')
    call dein#begin('/home/joey/.vim/bundles')

    " Required: Let dein manage dein
    call dein#add('/home/joey/.vim/bundles/repos/github.com/Shougo/dein.vim')

    """ My Bundles here:
    call dein#add('vim-airline/vim-airline')  "The lighter than air status bar
    call dein#add('vim-scripts/a')            "Quickly switch between source and headers
    call dein#add('w0rp/ale')                 "ALE - Asynchronous Lint Engine
    call dein#add('Rip-Rip/clang_complete')   "Autocomplete for C/C++
    call dein#add('Raimondi/delimitMate')     "Auto closing of quotes, parenthesis, etc.
    call dein#add('airblade/vim-gitgutter')   "Shows gutter git diff since last commit
    call dein#add('scrooloose/nerdtree')      "Project tree
    call dein#add('scrooloose/nerdcommenter') "Smart commenting
    call dein#add('matjutsushi/tagbar')       "Class outline viewer
    call dein#add('SirVer/ultisnips')         "Code snippet creator

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Airline
set laststatus=2    "Enable Airline by default

" ALE
:set statusline=%{ALEGetStatusLine()}
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_c_gcc_options = '-std=c17 -Wall'
let g:ale_linters = {
\   'python': ['mypy'],
\}
nmap <silent> <C-Left> <Plug>(ale_previous_wrap)
nmap <silent> <C-Right> <Plug>(ale_next_wrap)

"Clang Complete
" path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" or path directly to the library file
let g:clang_library_path='/usr/lib64/libclang.so.3.8'

" DelimitMate
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 2
let delimitMate_jump_expansion = 1

" Required:
filetype plugin indent on

" Tab settings
set expandtab
set shiftwidth=4
set ts=4
set ai
filetype indent off

" Remaps for split navigation
nnoremap <A-j> :resize +1 <CR>
nnoremap <A-k> :resize -1 <CR>
nnoremap <A-h> :vertical resize +1 <CR>
nnoremap <A-l> :vertical resize -1 <CR>
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" Terminal settings
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l


" Remaps for quicker access
nnoremap ; :

" Other features
set inccommand=split
set nu

