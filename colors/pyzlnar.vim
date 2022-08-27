" Vim colorscheme template file
" Author: Pyzlnar
" Notes: To check the meaning of the highlight groups, :help 'highlight'
" Template from https://github.com/ggalindezb/Vim-Colorscheme-Template

set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="pyzlnar"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=007     ctermbg=none   cterm=none
hi Cursor          ctermfg=none    ctermbg=red    cterm=none
hi CursorLine      ctermfg=none    ctermbg=none   cterm=none
hi LineNr          ctermfg=002     ctermbg=none   cterm=none
hi CursorLineNR    ctermfg=128     ctermbg=none   cterm=bold

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=none    ctermbg=red    cterm=none
hi SignColumn      ctermfg=002     ctermbg=008    cterm=none
hi FoldColumn      ctermfg=002     ctermbg=none   cterm=none
hi Folded          ctermfg=002     ctermbg=none   cterm=none

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit       ctermfg=none    ctermbg=none   cterm=none
hi ColorColumn     ctermfg=none    ctermbg=024    cterm=none
hi TabLine         ctermfg=002     ctermbg=none   cterm=none
hi TabLineFill     ctermfg=none    ctermbg=none   cterm=none
hi TabLineSel      ctermfg=128     ctermbg=none   cterm=bold

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=003     ctermbg=none   cterm=none
hi Search          ctermfg=007     ctermbg=001    cterm=none
hi IncSearch       ctermfg=none    ctermbg=red    cterm=none

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=002     ctermbg=none   cterm=none
hi StatusLineNC    ctermfg=128     ctermbg=none   cterm=none
hi WildMenu        ctermfg=none    ctermbg=red    cterm=none
hi Question        ctermfg=001     ctermbg=none   cterm=none
hi Title           ctermfg=023     ctermbg=none   cterm=none
hi ModeMsg         ctermfg=002     ctermbg=none   cterm=none
hi MoreMsg         ctermfg=none    ctermbg=red    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=015     ctermbg=025    cterm=none
hi Visual          ctermfg=none    ctermbg=240    cterm=none
hi VisualNOS       ctermfg=none    ctermbg=red    cterm=none
hi NonText         ctermfg=002     ctermbg=none   cterm=none

hi Todo            ctermfg=007     ctermbg=012    cterm=bold
hi Underlined      ctermfg=none    ctermbg=red    cterm=none
hi Error           ctermfg=001     ctermbg=none   cterm=none
hi ErrorMsg        ctermfg=001     ctermbg=none   cterm=none
hi WarningMsg      ctermfg=166     ctermbg=none   cterm=none
hi Ignore          ctermfg=243     ctermbg=none   cterm=none
hi SpecialKey      ctermfg=166     ctermbg=none   cterm=bold

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=120     ctermbg=none   cterm=none
hi String          ctermfg=120     ctermbg=none   cterm=none
hi StringDelimiter ctermfg=none    ctermbg=red    cterm=none
hi Character       ctermfg=120     ctermbg=none   cterm=none
hi Number          ctermfg=120     ctermbg=none   cterm=none
hi Boolean         ctermfg=120     ctermbg=none   cterm=none
hi Float           ctermfg=120     ctermbg=none   cterm=none

hi Identifier      ctermfg=024     ctermbg=none   cterm=bold
hi Function        ctermfg=006     ctermbg=none   cterm=bold

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=178     ctermbg=none   cterm=none
hi Conditional     ctermfg=166     ctermbg=none   cterm=none
hi Repeat          ctermfg=166     ctermbg=none   cterm=none
hi Label           ctermfg=166     ctermbg=none   cterm=none
hi Operator        ctermfg=024     ctermbg=none   cterm=none
hi Keyword         ctermfg=178     ctermbg=none   cterm=none
hi Exception       ctermfg=178     ctermbg=none   cterm=none
hi Comment         ctermfg=243     ctermbg=none   cterm=none

hi Special         ctermfg=160     ctermbg=none   cterm=none
hi SpecialChar     ctermfg=none    ctermbg=red    cterm=none
hi Tag             ctermfg=002     ctermbg=none   cterm=none
hi Delimiter       ctermfg=160     ctermbg=none   cterm=none
hi SpecialComment  ctermfg=007     ctermbg=012    cterm=bold
hi Debug           ctermfg=none    ctermbg=red    cterm=none

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=025     ctermbg=none   cterm=none
hi Include         ctermfg=025     ctermbg=none   cterm=none
hi Define          ctermfg=025     ctermbg=none   cterm=none
hi Macro           ctermfg=013     ctermbg=none   cterm=none
hi PreCondit       ctermfg=none    ctermbg=red    cterm=none

hi Type            ctermfg=061     ctermbg=none   cterm=none
hi StorageClass    ctermfg=034     ctermbg=none   cterm=none
hi Structure       ctermfg=013     ctermbg=none   cterm=none
hi Typedef         ctermfg=none    ctermbg=red    cterm=none

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=none    ctermbg=023    cterm=none
hi DiffChange      ctermfg=none    ctermbg=none   cterm=none
hi DiffDelete      ctermfg=001     ctermbg=none   cterm=none
hi DiffText        ctermfg=none    ctermbg=023    cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=none    ctermbg=red    cterm=none
hi PmenuSel        ctermfg=none    ctermbg=red    cterm=none
hi PmenuSbar       ctermfg=none    ctermbg=red    cterm=none
hi PmenuThumb      ctermfg=none    ctermbg=red    cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=015     ctermbg=001    cterm=none
hi SpellCap        ctermfg=015     ctermbg=130    cterm=none
hi SpellLocal      ctermfg=015     ctermbg=064    cterm=none
hi SpellRare       ctermfg=015     ctermbg=063    cterm=none

" --------------------------------
" Lang Specific
" --------------------------------

source ~/.vim/colors/_pzlang.vim
