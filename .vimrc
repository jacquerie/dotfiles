" Global
set encoding=utf-8

let mapleader=" "

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set expandtab
set shiftwidth=2
set tabstop=2


" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'udalov/kotlin-vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on


" SimpylFold
let g:SimpylFold_docstring_preview=1
let g:SimpylFold_fold_docstring=0
set foldlevel=99


" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_confirm_extra_conf=0
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
py3 << EOF
import os
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    exec(open(activate_this).read(), dict(__file__=activate_this))
EOF
