" ##### Basic setup ###### {{{
set number
colorscheme peachpuff
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
filetype plugin indent on
set statusline=%f
set statusline+=\ %m
set statusline+=%=
set statusline+=Current:\ %-4l
set statusline+=Total:\ %-4L
" }}}

" ###### Mappings ###### {{{
let mapleader = "-"
let maplocalleader = "\\"
" Map alt+d in insert mode to delete line
inoremap ∂ <esc>ddi 
" Map alt+u in insert mode to undo
inoremap ¨ <esc>ui
" Map alt+r in insert mode to redo
inoremap ® <esc><c-R>i
" Map ctrl + u to select word and convert to upper case
inoremap <c-u> <esc>viwU<esc>i
nnoremap <c-u> <esc> viwU<esc>
" Open vimrc in another window; ev stands for edit vimrc; sv stands for source vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" localleader + " adds quotes to word
inoremap jk <esc>
" Commented out 
"inoremap <esc> <nop>
"inoremap <Up> <nop>
"inoremap <Left> <nop>
"inoremap <Right> <nop>
"inoremap <Down> <nop>
"nnoremap <Up> <nop>
"nnoremap <Left> <nop>
"nnoremap <Down> <nop>
"nnoremap <Right> <nop>
" }}}

" ##### Typo corrections ##### {{{
iabbrev waht what
iabbrev tehn then
iabbrev adn and
iabbrev teh the
iabbrev hte the
iabbrev taht that
iabbrev htat that
" }}}

" Create comment shortcuts {{{
augroup comments
    autocmd!
    " Single line comments
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType go nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType java     nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType tex nnoremap <buffer> <localleader>c I%<esc>
    autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
    " block comments: s - start; e - end
    autocmd FileType java nnoremap <buffer> <localleader>s I/*<esc>
    autocmd FileType java nnoremap <buffer> <localleader>e A*/<esc>
    autocmd FileType python nnoremap <buffer> <localleader>s I"""<esc>
    autocmd FileType python nnoremap <buffer> <localleader>e A"""<esc>
augroup END
" }}}

" ##### Begin file configurations #####

" html config {{{
augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
" }}}

" vim config  {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" latex config {{{
augroup filetype_latex
    autocmd!
    " put \begin{} \end{} tags tags around the current word
    map  <C-B>      YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
    map! <C-B> <ESC>YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
augroup END
" }}}
