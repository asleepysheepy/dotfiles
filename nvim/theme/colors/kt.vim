if version > 580
  hi clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'kt'
set background=dark

let g:terminal_color_0 = '#1c2525'
let g:terminal_color_1 = '#c8233b'
let g:terminal_color_2 = '#6ee062'
let g:terminal_color_3 = '#ffffff'
let g:terminal_color_4 = '#359db0'
let g:terminal_color_5 = '#c575ff'
let g:terminal_color_6 = '#68cbe8'
let g:terminal_color_7 = '#d6e5e9'
let g:terminal_color_8 = '#3a4949'
let g:terminal_color_9 = '#ed3855'
let g:terminal_color_10 = '#8fe087'
let g:terminal_color_11 = '#ffffff'
let g:terminal_color_12 = '#71c9db'
let g:terminal_color_13 = '#b1b0fc'
let g:terminal_color_14 = '#bce6f4'
let g:terminal_color_15 = '#f2f6f7'

"+---------------+
"+ UI Components +
"+---------------+
hi Bold      gui=bold
hi Italic    gui=italic
hi Underline gui=underline
hi Undercurl gui=undercurl

"+--- Editor ---+
hi Normal guifg=#c8dde2 guibg=#0b1010

hi Cursor       guifg=#0b1010 guibg=#c8dde2
hi CursorLine   guifg=NONE    guibg=#121717
hi CursorColumn guifg=NONE    guibg=#121717
hi CursorLineNr guifg=#4e6464 guibg=NONE
hi LineNr       guifg=#212b2b guibg=NONE

hi ColorColumn    guifg=NONE    guibg=#000000 gui=NONE
hi Error          guifg=#c8dde2 guibg=#c8233b
hi MatchParen     guifg=#0b1010 guibg=#2d8da1
hi NonText        guifg=#2d3939               gui=NONE
hi Whitespace     guifg=#2d3939               gui=NONE
hi SpecialKey     guifg=#bdd6db guibg=#59c0e3 gui=NONE

hi Pmenu      guifg=#bdd6db guibg=#0b1010 gui=NONE
hi PmenuSbar  guifg=#bdd6db guibg=#0b1010
hi PmenuSel   guifg=NONE    guibg=#59c0e3 gui=NONE
hi PmenuThumb guifg=NONE    guibg=#59c0e3

hi SpellBad   guifg=#c8233b guibg=bg gui=undercurl guisp=#c8233b
hi SpellCap   guifg=#f7b83d guibg=bg gui=undercurl guisp=#f7b83d
hi SpellLocal guifg=#2d8da1 guibg=bg gui=undercurl guisp=#2d8da1
hi SpellRare  guifg=#bbe555 guibg=bg gui=undercurl guisp=#bbe555

hi Visual    guifg=#ffffff guibg=#359db0 gui=NONE
hi VisualNOS guifg=#ffffff guibg=#359db0 gui=NONE

"+- Neovim Support -+
hi healthError   guifg=#c8233b guibg=NONE
hi healthSuccess guifg=#bbe555 guibg=NONE
hi healthWarning guifg=#f7b83d guibg=NONE
hi TermCursorNC                guibg=bg

"+- Neovim Diagnostics API -+
hi DiagnosticWarn  guifg=#f7b83d
hi DiagnosticError guifg=#c8233b
hi DiagnosticInfo  guifg=#59c0e3
hi DiagnosticHint  guifg=#b1b0fc
hi DiagnosticUnderlineWarn  guifg=#f7b83d gui=undercurl
hi DiagnosticUnderlineError guifg=#c8233b gui=undercurl
hi DiagnosticUnderlineInfo  guifg=#59c0e3  gui=undercurl
hi DiagnosticUnderlineHint  guifg=#b1b0fc gui=undercurl

"+- Neovim DocumentHighlight -+
hi LspReferenceText  guibg=#2d3939
hi LspReferenceRead  guibg=#2d3939
hi LspReferenceWrite guibg=#2d3939

"+- Neovim LspSignatureHelp -+
hi LspSignatureActiveParameter guifg=#68cbe8 gui=underline

"+--- Gutter ---+
hi Folded     guifg=#adccd2 guibg=#000000 gui=bold
hi FoldColumn guifg=#212b2b guibg=NONE
hi SignColumn guifg=#212b2b guibg=NONE

"+--- Navigation ---+
hi Directory guifg=#68cbe8

"+--- Prompt/Status ---+
hi EndOfBuffer      guifg=#487a84

hi ErrorMsg         guifg=#ffffff guibg=#c8233b
hi WarningMsg       guifg=#0b1010 guibg=#f7b83d

hi ModeMsg          guifg=#f2f6f7
hi MoreMsg          guifg=#2d8da1
hi Question         guifg=#f2f6f7

hi StatusLine       guifg=#bdd6db guibg=#121717 gui=bold
hi StatusLineNC     guifg=#bdd6db guibg=#121717 gui=NONE
hi StatusLineTerm   guifg=#bdd6db guibg=#121717 gui=bold
hi StatusLineTermNC guifg=#bdd6db guibg=#121717 gui=NONE

hi WildMenu         guifg=#2d8da1 guibg=#121717

"+--- Search ---+
hi IncSearch guifg=#3a4949 guibg=#d6e5e9
hi Search    guifg=#d6e5e9 guibg=#3a4949 gui=underline

"+--- Tabs ---+
hi TabLine     guifg=#b1e2f2 guibg=#1c2525 gui=NONE
hi TabLineFill guifg=#b1e2f2 guibg=#1c2525 gui=NONE
hi TabLineSel  guifg=#d6e5e9 guibg=#3a4949 gui=NONE

"+--- Window ---+
hi Title          guifg=#59c0e3 guibg=NONE gui=bold
hi VertSplit      guifg=#359db0 guibg=#0b1010 gui=NONE

"+----------------------+
"+ Language Base Groups +
"+----------------------+
hi Boolean        guifg=#d6e5e9 guibg=NONE gui=NONE
hi Character      guifg=#d6e5e9 guibg=NONE gui=NONE
hi Comment        guifg=#537178 guibg=NONE gui=italic
hi Conceal                      guibg=NONE
hi Conditional    guifg=#b1e2f2 guibg=NONE gui=NONE
hi Constant       guifg=#b1b0fc guibg=NONE gui=NONE
hi Decorator      guifg=#2d8da1
hi Define         guifg=#59c0e3 guibg=NONE gui=NONE
hi Delimiter      guifg=NONE
hi Float          guifg=#b1e2f2 guibg=NONE gui=NONE
hi Function       guifg=#59c0e3 guibg=NONE gui=NONE
hi Identifier     guifg=#bdd6db guibg=NONE gui=NONE
hi Keyword        guifg=#59c0e3 guibg=NONE gui=NONE
hi Label          guifg=#d6e5e9 guibg=NONE gui=NONE
hi Number         guifg=#b1e2f2 guibg=NONE gui=NONE
hi Operator       guifg=#bdd6db guibg=NONE gui=NONE
hi PreProc        guifg=#7799a1 guibg=NONE gui=NONE
hi Special        guifg=#bdd6db guibg=NONE gui=NONE
hi Statement      guifg=#b1e2f2 guibg=NONE gui=NONE
hi StorageClass   guifg=#2d8da1 guibg=NONE gui=NONE
hi String         guifg=#6ee062 guibg=NONE gui=NONE
hi Tag            guifg=#59c0e3 guibg=NONE gui=NONE
hi Todo           guifg=#7799a1 guibg=NONE gui=inverse,bold
hi Type           guifg=NONE    guibg=NONE gui=NONE

hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link SpecialComment Comment
hi! link Variable Identifier

"+-----------+
"+ Languages +
"+-----------+
hi cssAttributeSelector guifg=#359db0
hi cssDefinition        guifg=#359db0 gui=NONE
hi cssIdentifier        guifg=#359db0 gui=underline
hi cssStringQ           guifg=#359db0
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

hi DiffAdd    guifg=#2d3939 guibg=#6ee062 gui=bold
hi DiffChange guifg=#2d3939 guibg=#f7b83d gui=NONE
hi DiffDelete guifg=#2d3939 guibg=#c8233b gui=NONE
hi DiffText   guifg=#2d3939 guibg=#f7b83d gui=bold
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

hi gitconfigVariable guifg=#b1b0fc

hi goBuiltins guifg=#59c0e3
hi! link goConstants Keyword

hi htmlArg  guifg=#b1b0fc
hi htmlLink guifg=#b1e2f2
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

hi jsonKeyword guifg=#59c0e3

hi lessClass guifg=#359db0 gui=NONE
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

hi markdownBlockquote    guifg=#59c0e3
hi markdownCode          guifg=#f2f6f7
hi markdownCodeDelimiter guifg=#f2f6f7
hi markdownH1            guifg=#ffffff gui=bold
hi markdownLinkText      guifg=#b1e2f2
hi markdownUrl           guifg=#b1e2f2 gui=underline
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

hi phpClasses guifg=#b1b0fc
hi phpDocTags guifg=#59c0e3
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

hi podCmdText      guifg=#59c0e3
hi podVerbatimLine guifg=#59c0e3
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

hi rubySymbol guifg=#68cbe8 gui=bold
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyConstant Constant
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

hi rustAttribute guifg=#2d8da1
hi rustEnum      guifg=#59c0e3 gui=bold
hi rustMacro     guifg=#b1b0fc gui=bold
hi rustModPath   guifg=#59c0e3
hi rustPanic     guifg=#b1e2f2 gui=bold
hi rustTrait     guifg=#59c0e3 gui=italic
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

hi sassClass guifg=#359db0 gui=NONE
hi sassId    guifg=#359db0 gui=underline
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

hi vimAugroup  guifg=#359db0
hi vimMapRhs   guifg=#59c0e3
hi vimNotation guifg=#b1b0fc
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

hi xmlAttrib     guifg=#b1b0fc
hi xmlCdataStart guifg=#537178 gui=bold
hi xmlNamespace  guifg=#59c0e3
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

hi yamlBlockMappingKey guifg=#59c0e3
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
" ALE
" > w0rp/ale
hi ALEWarningSign guifg=#f7b83d
hi ALEErrorSign   guifg=#c8233b
hi ALEWarning     guifg=#f7b83d gui=undercurl
hi ALEError       guifg=#c8233b gui=undercurl

" GitGutter
" > airblade/vim-gitgutter
hi GitGutterAdd          guifg=#6ee062
hi GitGutterChange       guifg=#f7b83d
hi GitGutterChangeDelete guifg=#c8233b
hi GitGutterDelete       guifg=#c8233b


" fugitive.vim
" > tpope/vim-fugitive
hi gitcommitDiscardedFile guifg=#c8233b
hi gitcommitUntrackedFile guifg=#c8233b
hi gitcommitSelectedFile  guifg=#6ee062

" NERDTree
" > scrooloose/nerdtree
hi NERDTreeExecFile guifg=#6ee062
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-indent-guides
" > nathanaelkane/vim-indent-guides
hi IndentGuidesEven guibg=#0b1010
hi IndentGuidesOdd  guibg=#1c2525

" vim-plug
" > junegunn/vim-plug
hi plugDeleted guifg=#c8233b

" > HerringtonDarkholme/yats.vim
hi typescriptBOMWindowMethod guifg=#59c0e3 gui=italic
hi typescriptRegexpString    guifg=#6ee062
hi tsxAttrib                 guifg=#b1b0fc
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
