" NOTE: Old ruby pallette
" Pallete for myself
" @Pyzlnar

set background=dark
set hlsearch
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:color_name = "pyzpal"

" << GENERAL >>
" Everything Else
hi Normal   ctermfg=007 ctermbg=none
" Comments
hi Comment  ctermfg=243 ctermbg=none
" Search
hi Search    ctermfg=007 ctermbg=001

" << SUPER >>
" Higher level reserve words
hi PreProc  ctermfg=025 ctermbg=none
" Constants
hi Type     ctermfg=061 ctermbg=none

" << STRINGS >>
" Delimiters/Quotes/Double quotes
hi Special  ctermfg=160 ctermbg=none
" Strings and symbols
hi Constant ctermfg=120 ctermbg=none

" << METHODS >>
" Method names
hi Function   ctermfg=006 ctermbg=none cterm=bold
" Method definitions
hi Identifier ctermfg=024 ctermbg=none

" << BLOCKS >>
" Block keywords
hi Statement ctermfg=178 ctermbg=none
" Conditionals
hi Repeat    ctermfg=166 ctermbg=none

" << SPECIAL >>
" Todo
hi Todo  ctermfg=008 ctermbg=012 cterm=bold

" << UNKNOWN >>
" Unknown
hi Operator ctermbg=blue
" Unknown
hi Ignore   ctermbg=yellow
" Unknown
hi Error ctermfg=007 ctermbg=red

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	        Constant
hi link Character	Constant
hi link Number	        Constant
hi link Boolean	        Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	        Statement
hi link Exception	Statement
hi link Include	        PreProc
hi link Define	        PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	        Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment  Special
hi link Debug		Special
