" VIM RC
" Author: Pyzlnar

" -------
" General
" -------

set nocompatible
set encoding=utf-8

" -------
" Vundler
" -------

" NOTE: You can install manually with :PluginInstall
" This lines is required for Vundler to work
filetype off

" Setup Vundler
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Git
Plugin 'tpope/vim-fugitive'
" Utils
Plugin 'tpope/vim-commentary'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
" Highlighting
Plugin 'asciidoc/vim-asciidoc'
Plugin 'elixir-lang/vim-elixir'
Plugin 'isRuslan/vim-es6'
Plugin 'mxw/vim-jsx'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim'
call vundle#end()

" --
" UI
" --

" Enable syntax highlight
syntax on
" Bottom right ruler
set ruler
" Enable colors
set t_Co=256
" Highlight search
set hlsearch
" Preferred color scheme
colorscheme pyzlnar

" -----
" Files
" -----

" Dont create any kind of backup, only edit the file
set nobackup
set nowb
set noswapfile
" Enable filetype plugins
filetype indent on
filetype plugin on

" -------
" Editing
" -------

" Default 2 step identing
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
" Allow backspace at EOL
" indent # Allows to bypass default indentation with backspace
" start  # Allows to delete from $
" eol    # Allows to delete from 0 to the previous line
set backspace=start
" Enable regex magicness
set magic

" -------
" Commands
" -------

" Nerdtree alias
command Tree NERDTree

" Delete trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" More filetypes for ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead *.prawn set filetype=ruby

" --------
" Movement
" --------

" Window control
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" -------------
" Plugin Config
" -------------

" Add jsx highlight to .js files
let g:jsx_ext_required = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
