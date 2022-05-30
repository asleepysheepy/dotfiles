if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "kt_light"
set background=light

let g:terminal_color_0 = "#1c2525"
let g:terminal_color_1 = "#c8233b"
let g:terminal_color_2 = "#6ee062"
let g:terminal_color_3 = "#414b4e"
let g:terminal_color_4 = "#359db0"
let g:terminal_color_5 = "#c575ff"
let g:terminal_color_6 = "#68cbe8"
let g:terminal_color_7 = "#d6e5e9"
let g:terminal_color_8 = "#3a4949"
let g:terminal_color_9 = "#ed3855"
let g:terminal_color_10 = "#8fe087"
let g:terminal_color_11 = "#738488"
let g:terminal_color_12 = "#71c9db"
let g:terminal_color_13 = "#b1b0fc"
let g:terminal_color_14 = "#bce6f4"
let g:terminal_color_15 = "#f2f6f7"

let s:colour_01 = "#ffffff"
let s:colour_02 = "#e7ecee"
let s:colour_03 = "#d6e5e9"
let s:colour_04 = "#c8dde2"
let s:colour_05 = "#7799a1"
let s:colour_06 = "#0b1010"
let s:colour_07 = "#121717"
let s:colour_08 = "#1c2525"
let s:colour_09 = "#212b2b"
let s:colour_10 = "#2d3939"
let s:colour_11 = "#537178"
let s:colour_12 = "#3a4949"
let s:colour_13 = "#09a5d9"
let s:colour_14 = "#0c8ab0"
let s:colour_15 = "#097396"
let s:colour_16 = "#087083"
let s:colour_17 = "#085261"
let s:colour_18 = "#c8233b"
let s:colour_19 = "#f7b83d"
let s:colour_20 = "#12a305"
let s:colour_21 = "#5c5b8a"

function! s:hi(group, guifg, guibg, attr, guisp)
  let cmd = ""
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:attr != ""
    let cmd = cmd . " gui=" . a:attr
  endif
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
call s:hi("Bold",      "", "", "bold",       "")
call s:hi("Italic",    "", "", "italic",     "")
call s:hi("Underline", "", "",  "underline", "")
call s:hi("Undercurl", "", "",  "undercurl", "")

"+--- Editor ---+
call s:hi("Normal", s:colour_09, s:colour_01, "", "")

call s:hi("Cursor",       s:colour_01, s:colour_09, "", "")
call s:hi("CursorLine",   "NONE",     s:colour_02, "", "")
call s:hi("CursorColumn", "NONE",     s:colour_02, "", "")
call s:hi("CursorLineNr", s:colour_11, "NONE",     "", "")
call s:hi("LineNr",       s:colour_05, "NONE",     "", "")

call s:hi("ColorColumn", "NONE",     s:colour_03, "NONE", "")
call s:hi("Error",       s:colour_09, s:colour_18, "",     "")
call s:hi("MatchParen",  s:colour_01, s:colour_17, "",     "")
call s:hi("NonText",     s:colour_05, "NONE",     "",     "")
call s:hi("Whitespace",  s:colour_05, "NONE",     "",     "")
call s:hi("SpecialKey",  s:colour_08, s:colour_15, "NONE", "")

call s:hi("Pmenu",      s:colour_08, s:colour_01, "NONE", "")
call s:hi("PmenuSbar",  s:colour_08, s:colour_01, "",     "")
call s:hi("PmenuSel",   "NONE",     s:colour_15, "NONE", "")
call s:hi("PmenuThumb", "NONE",     s:colour_15, "",     "")

call s:hi("SpellBad",   s:colour_18, "bg", "undercurl", s:colour_18)
call s:hi("SpellCap",   s:colour_19, "bg", "undercurl", s:colour_19)
call s:hi("SpellLocal", s:colour_17, "bg", "undercurl", s:colour_17)
call s:hi("SpellRare",  s:colour_20, "bg", "undercurl", s:colour_20)

call s:hi("Visual",    s:colour_06, s:colour_16, "NONE", "")
call s:hi("VisualNOS", s:colour_06, s:colour_16, "NONE", "")

"+- Neovim Support -+
call s:hi("healthError",   s:colour_18, "NONE", "", "")
call s:hi("healthSuccess", s:colour_20, "NONE", "", "")
call s:hi("healthWarning", s:colour_19, "NONE", "", "")
call s:hi("TermCursorNC",  "",         "bg",   "", "")

"+- Neovim Diagnostics API -+
call s:hi("DiagnosticWarn",  s:colour_19, "", "", "")
call s:hi("DiagnosticError", s:colour_18, "", "", "")
call s:hi("DiagnosticInfo",  s:colour_15, "", "", "")
call s:hi("DiagnosticHint",  s:colour_21, "", "", "")
call s:hi("DiagnosticUnderlineWarn",  s:colour_19, "", "undercurl", "")
call s:hi("DiagnosticUnderlineError", s:colour_18, "", "undercurl", "")
call s:hi("DiagnosticUnderlineInfo",  s:colour_15, "", "undercurl", "")
call s:hi("DiagnosticUnderlineHint",  s:colour_21, "", "undercurl", "")

"+- Neovim DocumentHighlight -+
call s:hi("LspReferenceText",  "", s:colour_05, "", "")
call s:hi("LspReferenceRead",  "", s:colour_05, "", "")
call s:hi("LspReferenceWrite", "", s:colour_05, "", "")

"+- Neovim LspSignatureHelp -+
call s:hi("LspSignatureActiveParameter", s:colour_14, "", "underline", "")

"+--- Gutter ---+
call s:hi("Folded",     s:colour_09, s:colour_03, "bold", "")
call s:hi("FoldColumn", s:colour_04, "NONE",     "",     "")
call s:hi("SignColumn", s:colour_04, "NONE",     "",     "")

"+--- Navigation ---+
call s:hi("Directory", s:colour_14, "", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:colour_09, "", "", "")

call s:hi("ErrorMsg",   s:colour_06, s:colour_18, "", "")
call s:hi("WarningMsg", s:colour_01, s:colour_19, "", "")

call s:hi("ModeMsg",  s:colour_06, "", "", "")
call s:hi("MoreMsg",  s:colour_17, "", "", "")
call s:hi("Question", s:colour_06, "", "", "")

call s:hi("StatusLine",       s:colour_08, s:colour_02, "bold", "")
call s:hi("StatusLineNC",     s:colour_08, s:colour_02, "NONE", "")
call s:hi("StatusLineTerm",   s:colour_08, s:colour_02, "bold", "")
call s:hi("StatusLineTermNC", s:colour_08, s:colour_02, "NONE", "")

call s:hi("WildMenu",         s:colour_17, s:colour_02, "",     "")

"+--- Search ---+
call s:hi("IncSearch", s:colour_12, s:colour_07, "",          "")
call s:hi("Search",    s:colour_07, s:colour_12, "underline", "")

"+--- Tabs ---+
call s:hi("TabLine",     s:colour_13, s:colour_03, "NONE", "")
call s:hi("TabLineFill", s:colour_13, s:colour_03, "NONE", "")
call s:hi("TabLineSel",  s:colour_17, s:colour_01, "NONE", "")

"+--- Window ---+
call s:hi("Title",     s:colour_15, "NONE",      "bold", "")
call s:hi("VertSplit", s:colour_16, s:colour_01,  "NONE", "")

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean",        s:colour_07, "NONE", "NONE",         "")
call s:hi("Character",      s:colour_07, "NONE", "NONE",         "")
call s:hi("Comment",        s:colour_05, "NONE", "italic",       "")
call s:hi("Conceal",        "",         "NONE", "",             "")
call s:hi("Conditional",    s:colour_13, "NONE", "NONE",         "")
call s:hi("Constant",       s:colour_21, "NONE", "NONE",         "")
call s:hi("Decorator",      s:colour_17, "",     "",             "")
call s:hi("Define",         s:colour_15, "NONE", "NONE",         "")
call s:hi("Delimiter",      "NONE",     "",     "",             "")
call s:hi("Float",          s:colour_13, "NONE", "NONE",         "")
call s:hi("Function",       s:colour_15, "NONE", "NONE",         "")
call s:hi("Identifier",     s:colour_08, "NONE", "NONE",         "")
call s:hi("Keyword",        s:colour_15, "NONE", "NONE",         "")
call s:hi("Label",          s:colour_07, "NONE", "NONE",         "")
call s:hi("Number",         s:colour_13, "NONE", "NONE",         "")
call s:hi("Operator",       s:colour_08, "NONE", "NONE",         "")
call s:hi("PreProc",        s:colour_10, "NONE", "NONE",         "")
call s:hi("Special",        s:colour_08, "NONE", "NONE",         "")
call s:hi("Statement",      s:colour_13, "NONE", "NONE",         "")
call s:hi("StorageClass",   s:colour_17, "NONE", "NONE",         "")
call s:hi("String",         s:colour_20, "NONE", "NONE",         "")
call s:hi("Tag",            s:colour_15, "NONE", "NONE",         "")
call s:hi("Todo",           s:colour_10, "NONE", "inverse,bold", "")
call s:hi("Type",           "NONE",     "NONE", "NONE",         "")

hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link SpecialComment Comment
hi! link Variable Identifier

"+-----------+
"+ Languages +
"+-----------+
call s:hi("cssAttributeSelector", s:colour_16, "", "",          "")
call s:hi("cssDefinition",        s:colour_16, "", "NONE",      "")
call s:hi("cssIdentifier",        s:colour_16, "", "underline", "")
call s:hi("cssStringQ",           s:colour_16, "", "",          "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("DiffAdd",    s:colour_05, s:colour_20, "bold", "")
call s:hi("DiffChange", s:colour_05, s:colour_19, "NONE", "")
call s:hi("DiffDelete", s:colour_05, s:colour_18, "NONE", "")
call s:hi("DiffText",   s:colour_05, s:colour_19, "bold", "")
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:hi("gitconfigVariable", s:colour_21, "", "", "")

call s:hi("goBuiltins", s:colour_15, "", "", "")
hi! link goConstants Keyword

call s:hi("htmlArg",  s:colour_21, "", "", "")
call s:hi("htmlLink", s:colour_13, "", "", "")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

hi! link javaDocTags Comment
hi! link javaCommentTitle Comment

hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Identifier
hi! link javaScriptNumber Number

hi jsonKeyword guifg=s:colour_15

hi lessClass guifg=s:colour_16 gui=NONE
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote",    s:colour_15, "", "",          "")
call s:hi("markdownCode",          s:colour_06, "", "",          "")
call s:hi("markdownCodeDelimiter", s:colour_06, "", "",          "")
call s:hi("markdownH1",            s:colour_06, "", "bold",      "")
call s:hi("markdownLinkText",      s:colour_13, "", "",          "")
call s:hi("markdownUrl",           s:colour_13, "", "underline", "")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("phpClasses", s:colour_21, "", "", "")
call s:hi("phpDocTags", s:colour_15, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:hi("podCmdText",      s:colour_15, "", "", "")
call s:hi("podVerbatimLine", s:colour_15, "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubySymbol", s:colour_14, "", "bold", "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyConstant Constant
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("rustAttribute", s:colour_17, "", "",       "")
call s:hi("rustEnum",      s:colour_15, "", "bold",   "")
call s:hi("rustMacro",     s:colour_21, "", "bold",   "")
call s:hi("rustModPath",   s:colour_15, "", "",       "")
call s:hi("rustPanic",     s:colour_13, "", "bold",   "")
call s:hi("rustTrait",     s:colour_15, "", "italic", "")
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

call s:hi("sassClass", s:colour_16, "", "NONE",      "")
call s:hi("sassId",    s:colour_16, "", "underline", "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup",  s:colour_16, "", "", "")
call s:hi("vimMapRhs",   s:colour_15, "", "", "")
call s:hi("vimNotation", s:colour_21, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib",     s:colour_21, "", "",     "")
call s:hi("xmlCdataStart", s:colour_11, "", "bold", "")
call s:hi("xmlNamespace",  s:colour_15, "", "",     "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:colour_15, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:colour_19, "", "",          "")
call s:hi("ALEErrorSign",   s:colour_18, "", "",          "")
call s:hi("ALEWarning",     s:colour_19, "", "undercurl", "")
call s:hi("ALEError",       s:colour_18, "", "undercurl", "")

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd",          s:colour_20, "", "", "")
call s:hi("GitGutterChange",       s:colour_19, "", "", "")
call s:hi("GitGutterChangeDelete", s:colour_18, "", "", "")
call s:hi("GitGutterDelete",       s:colour_18, "", "", "")

" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", s:colour_18, "", "", "")
call s:hi("gitcommitUntrackedFile", s:colour_18, "", "", "")
call s:hi("gitcommitSelectedFile",  s:colour_20, "", "", "")

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", s:colour_18, "", "", "")

" > HerringtonDarkholme/yats.vim
call s:hi("typescriptBOMWindowMethod", s:colour_15, "", "italic", "")
call s:hi("typescriptRegexpString",    s:colour_20, "", "",       "")
call s:hi("tsxAttrib",                 s:colour_21, "", "",       "")
hi! link tsxEqual Operator
hi! link tsxIntrinsicTagName htmlTag
hi! link tsxTagName tsxIntrinsicTagName
hi! link typescriptAliasDeclaration Function
hi! link typescriptArrowFuncArg Identifier
hi! link typescriptArrowFuncDef Function
hi! link typescriptAssign Operator
hi! link typescriptBinaryOp Operator
hi! link typescriptBOMWindowProp Function
hi! link typescriptBraces Normal
hi! link typescriptCall Normal
hi! link typescriptClassHeritage typescriptClassName
hi! link typescriptClassName Constant
hi! link typescriptDecorator Decorator
hi! link typescriptDocNamedParamType SpecialComment
hi! link typescriptDocNotation Keyword
hi! link typescriptDocTags Keyword
hi! link typescriptDOMStorageMethod Identifier
hi! link typescriptExport Keyword
hi! link typescriptFuncTypeArrow Structure
hi! link typescriptGlobal typescriptClassName
hi! link typescriptImport Keyword
hi! link typescriptInterfaceName Constant
hi! link typescriptMember Identifier
hi! link typescriptMemberOptionality Structure
hi! link typescriptNodeGlobal typescriptGlobal
hi! link typescriptObjectLabel Normal
hi! link typescriptOperator Operator
hi! link typescriptPredefinedType Type
hi! link typescriptTry Keyword
hi! link typescriptTypeAnnotation Structure
hi! link typescriptTypeBrackets Structure
hi! link typescriptTypeReference typescriptClassName
hi! link typescriptVariable Keyword
