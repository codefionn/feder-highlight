" Vim syntax file
" Language: Feder
" Author: Fionn Langhans

" We don't load any syntax, if something else already did
if exists("b:current_syntax")
	finish
endif

" Keywords
syn keyword constants null true false
syn keyword langKeywordsDecl class func interface namespace type nextgroup=name
syn keyword langKeywords if else while global break continue return include from for

syn keyword celTodo contained TODO FIXME NOTE

syn region comment start='##' end='##' fold contains=celTodo

" Matches
syn match objname   '[A-z_][A-z0-9_]*'
syn match celNumber '\d\+'
syn match celNumber '[-+]\d\+'
syn match celNumber '[-+]\d\+.\d*'
syn match celNumber '0x\[0-9ABCDEFabcdef]\+'
syn match celLang   '[ \t]]*:.*$'
syn match celLang	'^:.*$'

syn match comment   '#[^#].*$'  contains=celTodo
syn match comment   '#$'        contains=celTodo

" Regions
" syn region celBody start="else"  end=";" fold 
" syn region celBody start="if"    end=";" fold 
" syn region celBody start="^class[ \t]" end="^;" fold transparent
" syn region celBody start="func"  end=";" fold transparent
" syn region celBody start="namespace" end=";" fold 
" syn region celBody start="while" end=";" fold 

syn region celString start=/\v"/ skip=/\v\\./ end=/\v"/
syn region celString start=/\v'/ skip=/\v\\./ end=/\v'/


" Highlighting
hi def link equals			Statement
hi def link constants		Constant
hi def link langKeywords	Statement
hi def link langKeywordsDecl Statement
hi def link celNumber		Constant
hi def link celLang			PreProc
hi def link celString		Constant
hi def link comment			Comment
hi def link name			Type
hi def link todo			Todo
