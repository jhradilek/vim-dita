au BufNewFile,BufRead *.ditamap
  \ if getline(1).getline(2).getline(3) =~? '"bookmap.dtd"' |
  \   set filetype=ditabookmap syntax=ditabookmap iskeyword+=- |
  \ else |
  \   set filetype=ditamap syntax=ditamap iskeyword+=- |
  \ endif
