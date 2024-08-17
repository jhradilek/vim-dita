" Vim syntax file
" Language:    DITA reference
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-dita
" Last Change: 17 August 2024
" Description: A syntax file for DITA version 1.3 references

" Load this syntax file only once for the current buffer:
if exists("b:current_syntax")
  finish
endif

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
syn keyword ditaTagName component consequence coords copyrholder contained
syn keyword ditaTagName copyright copyryear created critdates contained
syn keyword ditaTagName data data-about dd ddhd delim desc div contained
syn keyword ditaTagName dl dlentry dlhead draft-comment dt dthd contained
syn keyword ditaTagName entry equation-block equation-figure contained
syn keyword ditaTagName equation-inline equation-number example contained
syn keyword ditaTagName featnum fig figgroup filepath fn foreign contained
syn keyword ditaTagName fragment fragref groupchoice groupcomp contained
syn keyword ditaTagName groupseq hazardstatement hazardsymbol contained
syn keyword ditaTagName howtoavoid i image imagemap index-base contained
syn keyword ditaTagName index-see index-see-also index-sort-as contained
syn keyword ditaTagName indexterm indextermref itemgroup keyword contained
syn keyword ditaTagName keywords kwd li lines line-through link contained
syn keyword ditaTagName linkinfo linklist linkpool linktext contained
syn keyword ditaTagName longdescref longquoteref lq markupname contained
syn keyword ditaTagName mathml mathmlref menucascade contained
syn keyword ditaTagName messagepanel metadata msgblock msgnum contained
syn keyword ditaTagName msgph navtitle note no-topic-nesting contained
syn keyword ditaTagName numcharref object ol oper option contained
syn keyword ditaTagName othermeta overline p param contained
syn keyword ditaTagName parameterentity parml parmname pd contained
syn keyword ditaTagName permissions ph platform plentry pre contained
syn keyword ditaTagName prodinfo prodname prognum prolog contained
syn keyword ditaTagName propdesc propdeschd properties property contained
syn keyword ditaTagName prophead proptype proptypehd propvalue contained
syn keyword ditaTagName propvaluehd pt publisher q refbody contained
syn keyword ditaTagName refbodydiv reference refsyn contained
syn keyword ditaTagName related-links repsep required-cleanup contained
syn keyword ditaTagName resourceid revised row screen contained
syn keyword ditaTagName searchtitle section sectiondiv sep contained
syn keyword ditaTagName series shape shortcut shortdesc contained
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
let b:current_syntax = "ditareference"
