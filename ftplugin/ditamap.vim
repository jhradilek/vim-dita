" Vim filetype plugin file
" Language:    DITA map
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-dita
" Last Change: 16 August 2024
" Description: A filetype plugin file for DITA version 1.3 maps

" Run this plugin ony once for the current buffer:
if exists('b:did_ftplugin')
  finish
endif

" Save compatibility options to avoid problems in compatible mode:
let s:save_cpo = &cpo
set cpo&vim

" Verify that omni completion is supported and the :XMLns command is
" available:
if exists('&omnifunc') && exists(':XMLns')
  " Enable omni completion for DITA version 1.3:
  XMLns ditamap
endif

" Restore compatibility options:
let &cpo = s:save_cpo
unlet s:save_cpo
