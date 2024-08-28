au BufNewFile,BufRead *.ditamap
  \ if getline(1).getline(2).getline(3) =~? '"bookmap.dtd"' |
  \   set filetype=ditabookmap syntax=ditabookmap |
  \ else |
  \   set filetype=ditamap syntax=ditamap |
  \ endif

au BufNewFile,BufRead *.dita
  \ if getline(1).getline(2).getline(3) =~? '"task.dtd"' |
  \   set filetype=ditatask syntax=ditatask |
  \ elseif getline(1).getline(2).getline(3) =~? '"concept.dtd"' |
  \   set filetype=ditaconcept syntax=ditaconcept |
  \ elseif getline(1).getline(2).getline(3) =~? '"reference.dtd"' |
  \   set filetype=ditareference syntax=ditareference |
  \ elseif getline(1).getline(2).getline(3) =~? '"glossary.dtd"' |
  \   set filetype=ditaglossary syntax=ditaglossary |
  \ else |
  \   set filetype=ditatopic syntax=ditatopic |
  \ endif

au BufNewFile,BufRead *.ditaval set filetype=ditaval syntax=ditaval
