" Vim syntax file
" Language:    DITA map
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-dita
" Last Change: 8 September 2024
" Description: A syntax file for DITA version 1.3 maps

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

syn keyword ditaTagName abbreviated-form alt anchor anchorid contained
syn keyword ditaTagName anchorkey anchorref apiname area contained
syn keyword ditaTagName audience author b boolean brand category contained
syn keyword ditaTagName change-completed change-historylist contained
syn keyword ditaTagName change-item change-organization contained
syn keyword ditaTagName change-person change-request-id contained
syn keyword ditaTagName change-request-reference contained
syn keyword ditaTagName change-request-system change-revisionid contained
syn keyword ditaTagName change-started change-summary cite contained
syn keyword ditaTagName cmdname codeblock codeph coderef colspec contained
syn keyword ditaTagName component consequence coords copyrholder contained
syn keyword ditaTagName copyright copyryear created critdates contained
syn keyword ditaTagName data data-about dd ddhd delim desc contained
syn keyword ditaTagName ditavalmeta ditavalref div dl dlentry contained
syn keyword ditaTagName dlhead draft-comment dt dthd contained
syn keyword ditaTagName dvrKeyscopePrefix dvrKeyscopeSuffix contained
syn keyword ditaTagName dvrResourcePrefix dvrResourceSuffix contained
syn keyword ditaTagName entry exportanchors featnum fig figgroup contained
syn keyword ditaTagName filepath fn foreign fragment fragref contained
syn keyword ditaTagName glossref groupchoice groupcomp groupseq contained
syn keyword ditaTagName hazardstatement hazardsymbol howtoavoid contained
syn keyword ditaTagName i image imagemap index-base index-see contained
syn keyword ditaTagName index-see-also index-sort-as indexterm contained
syn keyword ditaTagName indextermref itemgroup keydef keyword contained
syn keyword ditaTagName keywords kwd li lines line-through contained
syn keyword ditaTagName linktext longdescref longquoteref lq map contained
syn keyword ditaTagName mapref markupname menucascade contained
syn keyword ditaTagName messagepanel metadata msgblock msgnum contained
syn keyword ditaTagName msgph navref navtitle note numcharref contained
syn keyword ditaTagName object ol oper option othermeta overline contained
syn keyword ditaTagName p param parameterentity parml parmname contained
syn keyword ditaTagName pd permissions ph platform plentry pre contained
syn keyword ditaTagName prodinfo prodname prognum pt publisher q contained
syn keyword ditaTagName relcell relcolspec relheader relrow contained
syn keyword ditaTagName reltable repsep required-cleanup contained
syn keyword ditaTagName resourceid revised row screen contained
syn keyword ditaTagName searchtitle sep series shape shortcut contained
syn keyword ditaTagName shortdesc simpletable sl sli sort-as contained
syn keyword ditaTagName source state stentry sthead strow sub contained
syn keyword ditaTagName sup synblk synnote synnoteref synph contained
syn keyword ditaTagName syntaxdiagram systemoutput table tbody contained
syn keyword ditaTagName term text textentity tgroup thead title contained
syn keyword ditaTagName tm topicgroup topichead topicmeta contained
syn keyword ditaTagName topicref topicset topicsetref tt contained
syn keyword ditaTagName typeofhazard u uicontrol ul unknown contained
syn keyword ditaTagName userinput ux-window var varname vrm contained
syn keyword ditaTagName vrmlist wintitle xmlatt xmlelement contained
syn keyword ditaTagName xmlnsname xmlpi xref contained

syn region ditaComment  start="<draft-comment\>" end="</draft-comment>"me=e-16 contains=xmlTag,xmlNamespace,xmlTagName,xmlEndTag,xmlRegion,xmlEntity,@Spell keepend
syn region ditaTitle    start="<title\>" end="</title>"me=e-8 contains=xmlTag,xmlNamespace,xmlTagName,xmlEndTag,xmlRegion,xmlEntity,@Spell keepend
syn region ditaTitle    start="<navtitle\>" end="</navtitle>"me=e-11 contains=xmlTag,xmlNamespace,xmlTagName,xmlEndTag,xmlRegion,xmlEntity,@Spell keepend
syn region ditaTitle    start="<searchtitle\>" end="</searchtitle>"me=e-14 contains=xmlTag,xmlNamespace,xmlTagName,xmlEndTag,xmlRegion,xmlEntity,@Spell keepend
syn region ditaEmphasis start="<i\>" end="</i>"me=e-4 contains=xmlTag,xmlNamespace,xmlTagName,xmlEndTag,xmlRegion,xmlEndTag,@Spell keepend
syn region ditaStrong   start="<b\>" end="</b>"me=e-4 contains=xmlTag,xmlNamespace,xmlTagName,xmlEndTag,xmlRegion,xmlEndTag,@Spell keepend

hi def link ditaTagName Statement
hi def link ditaTitle   Title
hi def link ditaComment Comment
hi def ditaEmphasis     term=italic cterm=italic gui=italic
hi def ditaStrong       term=bold   cterm=bold   gui=bold

" Set the name for the current syntax:
let b:current_syntax = "ditamap"
