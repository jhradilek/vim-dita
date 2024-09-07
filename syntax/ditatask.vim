" Vim syntax file
" Language:    DITA task
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-dita
" Last Change: 8 September 2024
" Description: A syntax file for DITA version 1.3 tasks

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
syn keyword ditaTagName change-started change-summary chdesc contained
syn keyword ditaTagName chdeschd chhead choice choices contained
syn keyword ditaTagName choicetable choption choptionhd chrow contained
syn keyword ditaTagName cite cmd cmdname codeblock codeph contained
syn keyword ditaTagName coderef colspec component consequence contained
syn keyword ditaTagName context coords copyrholder copyright contained
syn keyword ditaTagName copyryear created critdates data contained
syn keyword ditaTagName data-about dd ddhd delim desc div dl contained
syn keyword ditaTagName dlentry dlhead draft-comment dt dthd contained
syn keyword ditaTagName entry equation-block equation-figure contained
syn keyword ditaTagName equation-inline equation-number example contained
syn keyword ditaTagName featnum fig figgroup filepath fn foreign contained
syn keyword ditaTagName fragment fragref groupchoice groupcomp contained
syn keyword ditaTagName groupseq hazardstatement hazardsymbol contained
syn keyword ditaTagName howtoavoid i image imagemap index-base contained
syn keyword ditaTagName index-see index-see-also index-sort-as contained
syn keyword ditaTagName indexterm indextermref info itemgroup contained
syn keyword ditaTagName keyword keywords kwd li lines contained
syn keyword ditaTagName line-through link linkinfo linklist contained
syn keyword ditaTagName linkpool linktext longdescref contained
syn keyword ditaTagName longquoteref lq markupname mathml contained
syn keyword ditaTagName mathmlref menucascade messagepanel contained
syn keyword ditaTagName metadata msgblock msgnum msgph navtitle contained
syn keyword ditaTagName note no-topic-nesting numcharref object contained
syn keyword ditaTagName ol oper option othermeta overline p contained
syn keyword ditaTagName param parameterentity parml parmname pd contained
syn keyword ditaTagName permissions ph platform plentry postreq contained
syn keyword ditaTagName pre prereq prodinfo prodname prognum contained
syn keyword ditaTagName prolog pt publisher q related-links contained
syn keyword ditaTagName repsep required-cleanup resourceid contained
syn keyword ditaTagName result revised row screen searchtitle contained
syn keyword ditaTagName section sectiondiv sep series shape contained
syn keyword ditaTagName shortcut shortdesc simpletable sl sli contained
syn keyword ditaTagName sort-as source state stentry step contained
syn keyword ditaTagName stepresult steps stepsection contained
syn keyword ditaTagName steps-informal steps-unordered contained
syn keyword ditaTagName steptroubleshooting stepxmp sthead strow contained
syn keyword ditaTagName sub substep substeps sup svg-container contained
syn keyword ditaTagName svgref synblk synnote synnoteref synph contained
syn keyword ditaTagName syntaxdiagram systemoutput table task contained
syn keyword ditaTagName taskbody tasktroubleshooting tbody term contained
syn keyword ditaTagName text textentity tgroup thead title contained
syn keyword ditaTagName titlealts tm topic tt tutorialinfo contained
syn keyword ditaTagName typeofhazard u uicontrol ul unknown contained
syn keyword ditaTagName userinput var varname vrm vrmlist contained
syn keyword ditaTagName wintitle xmlatt xmlelement xmlnsname contained
syn keyword ditaTagName xmlpi xref contained

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
let b:current_syntax = "ditatask"
