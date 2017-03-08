"""NeoBundle

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

""" My Bundles here:
NeoBundle 'w0rp/ale'                        "ALE - Asynchronous Lint Engine
NeoBundle 'Raimondi/delimitMate'            "Auto closing of quotes, parenthesis, brackets, etc.
NeoBundle 'Shougo/deoplete.nvim'            "Autocomplete for many languages           
NeoBundle 'zchee/deoplete-clang'            "Extends autocomplete to c-style languages
NeoBundle 'zchee/deoplete-jedi'             "Extends autocomplete to Python

call neobundle#end()

""" Bundle Settings

" ALE
:set statusline=%{ALEGetStatusLine()}
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
nmap <silent> <C-Left> <Plug>(ale_previous_wrap)
nmap <silent> <C-Right> <Plug>(ale_next_wrap)

" DelimitMate
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 2
let delimitMate_jump_expansion = 1

" Deoplete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<tab>"
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = "/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "~/llvm/tools/clang/lib/Headers/"

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck



" Tab settings
set expandtab
set shiftwidth=4
set ts=4
set ai

" Remaps for split navigation
nnoremap <S-j> <C-W>+
nnoremap <S-k> <C-W>_
nnoremap <S-h> <C-W><
nnoremap <S-l> <C-W>>
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
nnoremap Q @q

" Other features
set inccommand=split
set nu

