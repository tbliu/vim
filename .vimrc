" Basic setup
set number
syntax on
set backspace=indent,eol,start
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set noerrorbells
set nocompatible
set showmode
set vb  t_vb=
set showcmd
set showmode
set laststatus=2
set cindent
" Map alt+d in insert mode to delete line
inoremap ∂ <esc>ddi
" Map alt+u in insert mode to undo
inoremap ¨ <esc>ui
" Map alt+r in insert mode to redo
inoremap ® <esc><c-R>i

command Q q!
" localleader + " adds quotes to word
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <Up> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Down> <nop>
nnoremap <Up> <nop>
nnoremap <Left> <nop>
nnoremap <Down> <nop>
nnoremap <Right> <nop>
" Typo corrections
iabbrev waht what
iabbrev tehn then
iabbrev adn and
iabbrev teh the
iabbrev hte the

" Create comment shortcuts
augroup comments
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType go nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType java     nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
augroup END

