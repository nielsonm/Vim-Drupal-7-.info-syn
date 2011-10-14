" Vim syntax file
" Language:	Vim 7.2 script
" Filenames:    *.info, *.make
" Maintainer:	Michael Nielson and Jesse Hofmann-Smith
" Last Change:	Oct 14 2011
" Version:	1.0

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match   infoSection skipwhite contains=infoRule "^\[.\+\]$"

syn match   infoRule "^[^=:]\{-1,}="
syn match   infoRule "^[^:=]\{-1,}:"

syn match   infoComment skipwhite contains=infoTodo "^[#;].*"

syn keyword infoTodo contained TODO FIXME XXX NOTE

" Highlighting Settings
" ====================

hi def link infoSection Keyword
hi def link infoRule Type
hi def link infoComment Comment
hi def link infoTodo Todo

let b:current_syntax = "drupal-info"
