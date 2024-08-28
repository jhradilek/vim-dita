" Vim filetype detection file
" Language:    DITA
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-dita
" Last Change: 29 August 2024
" Description: A filetype detection file for DITA version 1.3

au BufNewFile,BufRead *.ditamap
  \ if getline(1).getline(2).getline(3) =~? '<!DOCTYPE\s*\<bookmap\>' |
  \   set filetype=ditabookmap syntax=ditabookmap |
  \ else |
  \   set filetype=ditamap syntax=ditamap |
  \ endif

au BufNewFile,BufRead *.dita
  \ if getline(1).getline(2).getline(3) =~? '<!DOCTYPE\s*\<task\>' |
  \   set filetype=ditatask syntax=ditatask |
  \ elseif getline(1).getline(2).getline(3) =~? '<!DOCTYPE\s*\<concept\>' |
  \   set filetype=ditaconcept syntax=ditaconcept |
  \ elseif getline(1).getline(2).getline(3) =~? '<!DOCTYPE\s*\<reference\>' |
  \   set filetype=ditareference syntax=ditareference |
  \ elseif getline(1).getline(2).getline(3) =~? '<!DOCTYPE\s*\<glossentry\>' |
  \   set filetype=ditaglossary syntax=ditaglossary |
  \ else |
  \   set filetype=ditatopic syntax=ditatopic |
  \ endif

au BufNewFile,BufRead *.xml
  \ if getline(1).getline(2).getline(3) =~? '<!DOCTYPE\s*\<task\>' |
  \   set filetype=ditatask syntax=ditatask |
  \ elseif getline(1).getline(2).getline(3) =~? '<!DOCTYPE\s*\<concept\>' |
  \   set filetype=ditaconcept syntax=ditaconcept |
  \ elseif getline(1).getline(2).getline(3) =~? '<!DOCTYPE\s*\<reference\>' |
  \   set filetype=ditareference syntax=ditareference |
  \ elseif getline(1).getline(2).getline(3) =~? '<!DOCTYPE\s*\<glossentry\>' |
  \   set filetype=ditaglossary syntax=ditaglossary |
  \ elseif getline(1).getline(2).getline(3) =~? '<!DOCTYPE\s*\<topic\>' |
  \   set filetype=ditatopic syntax=ditatopic |
  \ endif

au BufNewFile,BufRead *.ditaval set filetype=ditaval syntax=ditaval
