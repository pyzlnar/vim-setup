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
set laststatus=0
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
set backspace=start,indent,eol
" Use Return as :
" Keep in mind this only works in normal mode, not when using plugins like
" NERDTree or Fugitive
nore <Return> :

" ------
" Leader
" ------

let mapleader=','
" Toggle line numbers
nmap <silent> <leader>l :set nu<CR>
nmap <silent> <leader>L :set nonu<CR>

" Open NERDTree of current directory
nmap <silent> <leader>t :NERDTree %:p:h<CR>

" Replace old symbol rocket syntax in file ( :symbol => value -> symbol: value )
nmap <silent> <leader>rs :%s/\v:([a-z\-_\?\!]+)(\s+)\=\>/\1:\2/g<CR>
" Replace tabs with 2 spaces
nmap <silent> <leader>rt :%s/\v\t/  /g<CR>

" Tabularize symbols
nmap <silent> <leader><Tab>s :Tabularize /:\zs\s/l0<CR>
" Tabularize commas
nmap <silent> <leader><Tab>c :Tabularize /,\zs\s/l0<CR>
" Tabularize equals
nmap <silent> <leader><Tab>e :Tabularize /=/<CR>
" Tabularize rockets
nmap <silent> <leader><Tab>r :Tabularize /=>/<CR>

" -------
" Commands
" -------

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

" Switch tab with tab!
nmap <Tab> gt
nmap <S-Tab> gT

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
