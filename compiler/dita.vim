" Vim compiler file
" Language:    DITA
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-dita
" Last Change: 6 September 2024
" Description: A compiler definition file for DITA version 1.3

" Do not override run-time compiler settings:
if exists('g:current_compiler')
  finish
endif

" Define the current compiler:
let g:current_compiler = 'dita'

" Ensure the plug-in is compatible with old versions of Vim:
if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

" Save compatibility options to avoid problems in compatible mode:
let s:save_cpo = &cpo
set cpo&vim

" Use DITA Open Toolkit to build the file and produce errors:
CompilerSet makeprg=dita\ --args.gen.task.lbl=yes\ -f\ xhtml\ -i\ %

" Parse error messages:
CompilerSet errorformat=
  \%trror:\ file:%f:%l:%c:\ %m,
  \%trror:\ \%.%#:\ file:%f:%l:%c:\ %m,
  \%trror:\ %m

" Restore the compatibility options:
let &cpo = s:save_cpo
unlet s:save_cpo
