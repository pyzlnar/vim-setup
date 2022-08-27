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
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-syntastic/syntastic'
" Project & Navigation
Plugin 'tpope/vim-projectionist'
" Highlighting
Plugin 'StanAngeloff/php.vim'
Plugin 'asciidoc/vim-asciidoc'
Plugin 'jvirtanen/vim-hcl'
Plugin 'elixir-editors/vim-elixir'
Plugin 'isRuslan/vim-es6'
Plugin 'mxw/vim-jsx'
Plugin 'jparise/vim-graphql'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
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

" More filetypes for bash
au BufNewFile,BufRead bash_osx set filetype=bash

" More filetype for crontabs
au BufNewFile,BufRead *.cron    set filetype=crontab
au BufNewFile,BufRead *.crontab set filetype=crontab

" More filetypes for ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead *.prawn set filetype=ruby

" More filetypes for elixir
au BufRead,BufNewFile *.eex,*.heex,*.leex,*.sface,*.lexs set filetype=eelixir
au BufRead,BufNewFile mix.lock set filetype=elixir

" More filetypes for slim
au BufNewFile,BufRead *.slime set filetype=slim

" Four space indent in php
au FileType php setl sw=4 sts=4 et

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

" -------------
" Auto Commands
" -------------

" Delete trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" --------
" Mappings
" --------

" Window control
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Switch tab with tab!
nmap <Tab> gt
nmap <S-Tab> gT

" Displays the highlight info of the word under cursor
map <F10> :call HighlightInfo()<CR>

" ---------------
" Leader Mappings
" ---------------

let mapleader=','

" Toggle line numbers
nmap <silent><leader>l :call ToggleLineNumbers()<CR>
nmap <silent><leader>L :call HideLineNumbers()<CR>

" Open NERDTree of current directory
nmap <silent><leader>t :NERDTree %:p:h<CR>

" Force redraw
nmap <silent><leader>d :redraw!<CR>
" Duplicate tab
nmap <silent><leader>s :tab split<CR>
" o but stays in normal mode
nmap <silent><leader>o o<Esc>k
" O but stays in normal mode
nmap <silent><leader>O O<Esc>j

" Replace
" -------

" Replace old symbol rocket syntax in file ( :symbol => value -> symbol: value )
nmap <silent><leader>rs :%s/\v:([a-z\-_\?\!]+)(\s+)\=\>/\1:\2/g<CR>
" Replace literals syntax from %i() to %i[]
nmap <silent><leader>rl :%s/\v\%([wi]\s*)\((\_.{-})\)/%\1[\2]/g<CR>
" Replace tabs with 2 spaces
nmap <silent><leader>rt :%s/\v\t/  /g<CR>

" Tabularize
" ----------

" Tabularize symbols
nmap <silent><leader><Tab>s :Tabularize /:\zs\s/l0<CR>
" Tabularize commas
nmap <silent><leader><Tab>c :Tabularize /,\zs\s/l0<CR>
" Tabularize equals
nmap <silent><leader><Tab>e :Tabularize /=/<CR>
" Tabularize rockets
nmap <silent><leader><Tab>r :Tabularize /=>/<CR>
" Tabularize do:
nmap <silent><leader><Tab>d :Tabularize /do:/<CR>
" Tabularize front arrow ->
nmap <silent><leader><Tab>a :Tabularize /->/<CR>
" Tabularize back  arrow <-
nmap <silent><leader><Tab>b :Tabularize /<-/<CR>

" -------------
" Plugin Config
" -------------

" Omnifunc
" --------

" Disables autocompletion on Ctrl+C for sql files
let g:omni_sql_no_default_maps = 1

" Syntastic
" ---------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Checks on file open and save. There is no middle ground.
let g:syntastic_check_on_open            = 1
" Checks on buffer change
let g:syntastic_check_on_wq              = 0
" Populates the loc list when run
let g:syntastic_always_populate_loc_list = 1
" Silences style and warnings from mri (Rubocop checks those)
let g:syntastic_ruby_exec               = 'ruby2.7.1'
let g:syntastic_ruby_mri_quiet_messages = { 'level': 'warnings', 'type': 'style' }
" Disable for Latex
let g:syntastic_tex_checkers=['']

" Unused configs
"
" Opens loc list on default
" let g:syntastic_auto_loc_list = 1
"
" Change ruby check to rubocop (default mri)
" I find it slow and prefer to run it manually, not from vim
" let g:syntastic_ruby_checkers=['rubocop']
"

" Vim ES6
" -------

" Add jsx highlight to .js files
let g:jsx_ext_required = 0

" Vim Rails
" ---------

" Adds :xService and :xTest commands to vim
" vim-rails allegedly has test out of the box but it was not working for some
" reason.
let g:rails_projections = {
      \  "app/services/*.rb": {
      \    "template": ["class {camelcase|capitalize|colons}", "end"],
      \    "type": "service"
      \  },
      \  "test/*_test.rb": {
      \    "template": [
      \      "require 'test_helper",
      \      "",
      \      "class {camelcase|capitalize|colons}Test < ActiveSupport::TestCase",
      \      "end"
      \    ],
      \    "type": "test"
      \  }
      \}

" ---------
" Functions
" ---------

function ToggleLineNumbers()
  if &nu == 0
    set nu
    set rnu
    set cul
  elseif &rnu == 0
    set rnu
  else
    set nornu
  endif
endfunction

function HideLineNumbers()
  set nonu
  set nornu
  set nocul
endfunction

" https://vim.fandom.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor
function HighlightInfo()
  let hi = synIDattr(synID(line('.'),col('.'),1),'name')
  let tr = synIDattr(synID(line('.'),col('.'),0),'name')
  let lo = synIDattr(synIDtrans(synID(line('.'),col('.'),1)),'name')
  echo 'hi<' . hi . '> trans<' . tr . '> lo<' . lo . '>'
endfunction
