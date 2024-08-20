" Vim syntax file
" Language:    DITA DITAVAL
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-dita
" Last Change: 20 August 2024
" Description: A syntax file for DITA version 1.3 DITAVAL files

" Load this syntax file only once for the current buffer:
if exists("b:current_syntax")
  finish
endif

do Syntax xml
syn cluster xmlTagHook add=ditaTagName
syn spell toplevel
syn case match

syn keyword ditaTagName alt-text endflag prop revprop startflag contained
syn keyword ditaTagName style-conflict val contained

hi def link ditaTagName Statement

" Set the name for the current syntax:
let b:current_syntax = "ditaval"
