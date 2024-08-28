" Vim syntax file
" Language:    DITA map
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-dita
" Last Change: 29 August 2024
" Description: A syntax file for DITA version 1.3 bookmaps

" Load this syntax file only once for the current buffer:
if exists("b:current_syntax")
  finish
endif

" Allow hyphenated elements to be recognized as keywords:
setlocal iskeyword+=-

do Syntax xml
syn cluster xmlTagHook add=ditaTagName
syn spell toplevel
syn case match

syn keyword ditaTagName abbreviated-form abbrevlist contained
syn keyword ditaTagName addressdetails administrativearea alt contained
syn keyword ditaTagName amendments anchor anchorid anchorkey contained
syn keyword ditaTagName anchorref apiname appendices appendix contained
syn keyword ditaTagName approved area audience author contained
syn keyword ditaTagName authorinformation b backmatter contained
syn keyword ditaTagName bibliolist bookabstract contained
syn keyword ditaTagName bookchangehistory bookevent contained
syn keyword ditaTagName bookeventtype bookid booklibrary contained
syn keyword ditaTagName booklist booklists bookmap bookmeta contained
syn keyword ditaTagName booknumber bookowner bookpartno contained
syn keyword ditaTagName bookrestriction bookrights booktitle contained
syn keyword ditaTagName booktitlealt boolean brand category contained
syn keyword ditaTagName change-completed change-historylist contained
syn keyword ditaTagName change-item change-organization contained
syn keyword ditaTagName change-person change-request-id contained
syn keyword ditaTagName change-request-reference contained
syn keyword ditaTagName change-request-system change-revisionid contained
syn keyword ditaTagName change-started change-summary chapter contained
syn keyword ditaTagName cite cmdname codeblock codeph coderef contained
syn keyword ditaTagName colophon colspec completed component contained
syn keyword ditaTagName consequence contactnumber contactnumbers contained
syn keyword ditaTagName coords copyrfirst copyrholder copyright contained
syn keyword ditaTagName copyrlast copyryear country created contained
syn keyword ditaTagName critdates data data-about day dd ddhd contained
syn keyword ditaTagName dedication delim desc ditavalmeta contained
syn keyword ditaTagName ditavalref div dl dlentry dlhead contained
syn keyword ditaTagName draft-comment draftintro dt dthd contained
syn keyword ditaTagName dvrKeyscopePrefix dvrKeyscopeSuffix contained
syn keyword ditaTagName dvrResourcePrefix dvrResourceSuffix contained
syn keyword ditaTagName edited edition emailaddress contained
syn keyword ditaTagName emailaddresses entry exportanchors contained
syn keyword ditaTagName featnum fig figgroup figurelist filepath contained
syn keyword ditaTagName firstname fn foreign fragment fragref contained
syn keyword ditaTagName frontmatter generationidentifier contained
syn keyword ditaTagName glossarylist groupchoice groupcomp contained
syn keyword ditaTagName groupseq hazardstatement hazardsymbol contained
syn keyword ditaTagName honorific howtoavoid i image imagemap contained
syn keyword ditaTagName index-base indexlist index-see contained
syn keyword ditaTagName index-see-also index-sort-as indexterm contained
syn keyword ditaTagName indextermref isbn itemgroup keydef contained
syn keyword ditaTagName keyword keywords kwd lastname li lines contained
syn keyword ditaTagName line-through linktext locality contained
syn keyword ditaTagName localityname longdescref longquoteref lq contained
syn keyword ditaTagName mainbooktitle maintainer map mapref contained
syn keyword ditaTagName markupname menucascade messagepanel contained
syn keyword ditaTagName metadata middlename month msgblock contained
syn keyword ditaTagName msgnum msgph namedetails navref navtitle contained
syn keyword ditaTagName note notices numcharref object ol oper contained
syn keyword ditaTagName option organization organizationinfo contained
syn keyword ditaTagName organizationname organizationnamedetails contained
syn keyword ditaTagName otherinfo othermeta overline p param contained
syn keyword ditaTagName parameterentity parml parmname part pd contained
syn keyword ditaTagName permissions person personinfo personname contained
syn keyword ditaTagName ph platform plentry postalcode pre contained
syn keyword ditaTagName preface printlocation prodinfo prodname contained
syn keyword ditaTagName prognum pt published publisher contained
syn keyword ditaTagName publisherinformation publishtype q contained
syn keyword ditaTagName relcell relcolspec relheader relrow contained
syn keyword ditaTagName reltable repsep required-cleanup contained
syn keyword ditaTagName resourceid reviewed revised revisionid contained
syn keyword ditaTagName row screen searchtitle sep series shape contained
syn keyword ditaTagName shortcut shortdesc simpletable sl sli contained
syn keyword ditaTagName sort-as source started state stentry contained
syn keyword ditaTagName sthead strow sub summary sup synblk contained
syn keyword ditaTagName synnote synnoteref synph syntaxdiagram contained
syn keyword ditaTagName systemoutput table tablelist tbody term contained
syn keyword ditaTagName tested text textentity tgroup thead contained
syn keyword ditaTagName thoroughfare title tm toc topicgroup contained
syn keyword ditaTagName topichead topicmeta topicref topicset contained
syn keyword ditaTagName topicsetref trademarklist tt contained
syn keyword ditaTagName typeofhazard u uicontrol ul unknown url contained
syn keyword ditaTagName urls userinput ux-window var varname contained
syn keyword ditaTagName volume vrm vrmlist wintitle xmlatt contained
syn keyword ditaTagName xmlelement xmlnsname xmlpi xref year contained

syn region ditaComment  start="<draft-comment\>" end="</draft-comment>"me=e-16 contains=xmlTag,xmlNamespace,xmlTagName,xmlEndTag,xmlRegion,xmlEntity,@Spell keepend
syn region ditaTitle    start="<title\>" end="</title>"me=e-8 contains=xmlTag,xmlNamespace,xmlTagName,xmlEndTag,xmlRegion,xmlEntity,@Spell keepend
syn region ditaEmphasis start="<i\>" end="</i>"me=e-4 contains=xmlTag,xmlNamespace,xmlTagName,xmlEndTag,xmlRegion,xmlEndTag,@Spell keepend
syn region ditaStrong   start="<b\>" end="</b>"me=e-4 contains=xmlTag,xmlNamespace,xmlTagName,xmlEndTag,xmlRegion,xmlEndTag,@Spell keepend

hi def link ditaTagName Statement
hi def link ditaTitle   Title
hi def link ditaComment Comment
hi def ditaEmphasis     term=italic cterm=italic gui=italic
hi def ditaStrong       term=bold   cterm=bold   gui=bold

" Set the name for the current syntax:
let b:current_syntax = "ditabookmap"
