" Vim XML data file
" Language:    DITA DITAVAL
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-dita
" Last Change: 2024-08-20
" Description: An XML data file for DITA version 1.3 DITAVAL files

let g:xmldata_ditaval = {
\ 'vimxmlentities': ['lt', 'gt', 'amp', 'apos', 'quot'],
\ 'vimxmlroot': ['val'],
\ 'alt-text': [
\ [],
\ {}
\ ],
\ 'val': [
\ ['prop', 'revprop', 'style-conflict'],
\ {}
\ ],
\ 'style-conflict': [
\ [],
\ {'background-conflict-color': [], 'foreground-conflict-color': []}
\ ],
\ 'prop': [
\ ['endflag', 'startflag'],
\ {'action': ['exclude', 'flag', 'include', 'passthrough'], 'att': [], 'backcolor': [], 'color': [], 'style': [], 'val': []}
\ ],
\ 'revprop': [
\ ['endflag', 'startflag'],
\ {'action': ['flag', 'include', 'passthrough'], 'backcolor': [], 'changebar': [], 'color': [], 'style': [], 'val': []}
\ ],
\ 'endflag': [
\ ['alt-text'],
\ {'imageref': []}
\ ],
\ 'startflag': [
\ ['alt-text'],
\ {'imageref': []}
\ ],
\ }
