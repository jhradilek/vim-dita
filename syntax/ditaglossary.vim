" Vim syntax file
" Language:    DITA glossary
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-dita
" Last Change: 29 August 2024
" Description: A syntax file for DITA version 1.3 glossaries

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

syn keyword ditaTagName abbreviated-form abstract alt apiname contained
syn keyword ditaTagName area audience author b body bodydiv contained
syn keyword ditaTagName boolean brand category change-completed contained
syn keyword ditaTagName change-historylist change-item contained
syn keyword ditaTagName change-organization change-person contained
syn keyword ditaTagName change-request-id contained
syn keyword ditaTagName change-request-reference contained
syn keyword ditaTagName change-request-system change-revisionid contained
syn keyword ditaTagName change-started change-summary cite contained
syn keyword ditaTagName cmdname codeblock codeph coderef colspec contained
syn keyword ditaTagName component conbody conbodydiv concept contained
syn keyword ditaTagName consequence coords copyrholder copyright contained
syn keyword ditaTagName copyryear created critdates data contained
syn keyword ditaTagName data-about dd ddhd delim desc div dl contained
syn keyword ditaTagName dlentry dlhead draft-comment dt dthd contained
syn keyword ditaTagName entry equation-block equation-figure contained
syn keyword ditaTagName equation-inline equation-number example contained
syn keyword ditaTagName featnum fig figgroup filepath fn foreign contained
syn keyword ditaTagName fragment fragref glossAbbreviation contained
syn keyword ditaTagName glossAcronym glossAlt glossAlternateFor contained
syn keyword ditaTagName glossBody glossdef glossentry contained
syn keyword ditaTagName glossPartOfSpeech glossProperty contained
syn keyword ditaTagName glossScopeNote glossShortForm contained
syn keyword ditaTagName glossStatus glossSurfaceForm glossSymbol contained
syn keyword ditaTagName glossSynonym glossterm glossUsage contained
syn keyword ditaTagName groupchoice groupcomp groupseq contained
syn keyword ditaTagName hazardstatement hazardsymbol howtoavoid contained
syn keyword ditaTagName i image imagemap index-base index-see contained
syn keyword ditaTagName index-see-also index-sort-as indexterm contained
syn keyword ditaTagName indextermref itemgroup keyword keywords contained
syn keyword ditaTagName kwd li lines line-through link linkinfo contained
syn keyword ditaTagName linklist linkpool linktext longdescref contained
syn keyword ditaTagName longquoteref lq markupname mathml contained
syn keyword ditaTagName mathmlref menucascade messagepanel contained
syn keyword ditaTagName metadata msgblock msgnum msgph navtitle contained
syn keyword ditaTagName note no-topic-nesting numcharref object contained
syn keyword ditaTagName ol oper option othermeta overline p contained
syn keyword ditaTagName param parameterentity parml parmname pd contained
syn keyword ditaTagName permissions ph platform plentry pre contained
syn keyword ditaTagName prodinfo prodname prognum prolog pt contained
syn keyword ditaTagName publisher q related-links repsep contained
syn keyword ditaTagName required-cleanup resourceid revised row contained
syn keyword ditaTagName screen searchtitle section sectiondiv contained
syn keyword ditaTagName sep series shape shortcut shortdesc contained
syn keyword ditaTagName simpletable sl sli sort-as source state contained
syn keyword ditaTagName stentry sthead strow sub sup contained
syn keyword ditaTagName svg-container svgref synblk synnote contained
syn keyword ditaTagName synnoteref synph syntaxdiagram contained
syn keyword ditaTagName systemoutput table tbody term text contained
syn keyword ditaTagName textentity tgroup thead title titlealts contained
syn keyword ditaTagName tm topic tt typeofhazard u uicontrol ul contained
syn keyword ditaTagName unknown userinput var varname vrm contained
syn keyword ditaTagName vrmlist wintitle xmlatt xmlelement contained
syn keyword ditaTagName xmlnsname xmlpi xref contained

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
let b:current_syntax = "ditaglossary"
