au BufNewFile,BufRead *.ditamap
  \ if getline(1).getline(2).getline(3) =~? '"bookmap.dtd"' |
  \   set filetype=ditabookmap syntax=ditabookmap iskeyword+=- |
  \ else |
  \   set filetype=ditamap syntax=ditamap iskeyword+=- |
  \ endif

au BufNewFile,BufRead *.dita
  \ if getline(1).getline(2).getline(3) =~? '"task.dtd"' |
  \   set filetype=ditatask syntax=ditatask iskeyword+=- |
  \ elseif getline(1).getline(2).getline(3) =~? '"concept.dtd"' |
  \   set filetype=ditaconcept syntax=ditaconcept iskeyword+=- |
  \ elseif getline(1).getline(2).getline(3) =~? '"reference.dtd"' |
  \   set filetype=ditareference syntax=ditareference iskeyword+=- |
  \ elseif getline(1).getline(2).getline(3) =~? '"glossary.dtd"' |
  \   set filetype=ditaglossary syntax=ditaglossary iskeyword+=- |
  \ else |
  \   set filetype=ditatopic syntax=ditatopic iskeyword+=- |
  \ endif
