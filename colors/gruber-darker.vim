" GruberDarker Theme for Vim
"
" Adapted from an Emacs theme:
" https://github.com/rexim/gruber-darker-theme
"
" Colorscheme template: https://github.com/mhartington/oceanic-next/blob/master/colors/OceanicNext.vim
" --------------------------------------------

" {{{ Setup
  set background=dark
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
  let g:colors_name="GruberDarker"
" }}}
" {{{ Italics
  let g:gruber_terminal_italic = get(g:, 'gruber_terminal_italic', 0)
  let s:italic = ""
  if g:gruber_terminal_italic == 1
    let s:italic = "italic"
  endif
"}}}
" {{{ Bold
  let g:gruber_terminal_bold = get(g:, 'gruber_terminal_bold', 0)
  let s:bold = ""
  if g:gruber_terminal_bold == 1
   let s:bold = "bold"
  endif
"}}}
" {{{ Colors - Fixed to match Emacs Gruber Darker
  let s:gruberFG=['#e4e4ef', '253']
  let s:gruberFG1=['#f4f4ff', '254']
  let s:gruberFG2=['#65737e', '243']
  let s:gruberFG3=['#65737e', '243']
  let s:gruberWhite=['#ffffff', '15']
  let s:gruberBlack=['#181818', '0']
  let s:gruberBG=['#181818', '233']
  let s:gruberBG1=['#282828', '235']
  let s:gruberBG2=['#484848', '238']
  let s:gruberLightRed=['#c73c3f', '203']
  let s:gruberRed=['#f43841', '160']
  let s:gruberQuartz=['#95a99b', '108']
  let s:gruberGreen=['#73c936', '70']
  let s:gruberMain=['#ffdd33', '220']
  let s:gruberBrown=['#cc8c3c', '172']
  let s:gruberPurple=['#9e95c7', '98']
  let s:gruberLightBlue=['#96a6c8', '32']
  let s:gruberBlue=['#0000d7', '20']
  let s:gruberGold=['#d7af00', '178']
  let s:none=['NONE', 'NONE']

" {{{ Highlight function
function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction
" }}}
" {{{ call <sid>:hi(group, fg, bg, gui, guisp)
call <sid>hi('Bold',          '',                 '',           'bold',    '')
call <sid>hi('Debug',         s:gruberFG2,        '',           '',        '')
call <sid>hi('Directory',     s:gruberLightBlue,  '',           '',        '')
call <sid>hi('ErrorMsg',      s:gruberWhite,      s:gruberRed,  '',        '')
call <sid>hi('Exception',     s:gruberRed,        '',           '',        '')
call <sid>hi('FoldColumn',    s:gruberBrown,      s:gruberBG1,  '',        '')
call <sid>hi('Folded',        s:gruberBrown,      s:gruberBG1,  s:italic,  '')
call <sid>hi('IncSearch',     s:gruberBlack,      s:gruberMain, 'NONE',    '')
call <sid>hi('Italic',        '',                 '',           s:italic,  '')

call <sid>hi('Macro',         s:gruberRed,        '',            '',        '')
call <sid>hi('MatchParen',    s:gruberBlack,      s:gruberMain, '',        '')
call <sid>hi('ModeMsg',       s:gruberMain,       '',            '',        '')
call <sid>hi('MoreMsg',       s:gruberMain,       '',            '',        '')
call <sid>hi('Question',      s:gruberRed,        '',            '',        '')
call <sid>hi('Search',        s:gruberBlack,      s:gruberMain,  '',        '')
call <sid>hi('SpecialKey',    s:gruberFG2,        '',            '',        '')
call <sid>hi('TooLong',       s:gruberRed,        '',            '',        '')
call <sid>hi('Underlined',    s:gruberPurple,     '',            '',        '')
call <sid>hi('Visual',        s:none,             s:gruberBG2,   '',        '')
call <sid>hi('VisualNOS',     s:gruberRed,        '',            '',        '')
call <sid>hi('WarningMsg',    s:gruberRed,        '',            '',        '')
call <sid>hi('WildMenu',      s:gruberBlack,      s:gruberMain,  '',        '')
call <sid>hi('Title',         s:gruberMain,       '',            '',        '')
call <sid>hi('Conceal',       s:gruberFG,         s:gruberBG,    '',        '')
call <sid>hi('Cursor',        s:gruberBG,         s:gruberFG,    '',        '')
call <sid>hi('NonText',       s:gruberFG2,        '',            '',        '')
call <sid>hi('Normal',        s:gruberFG,         s:gruberBG,    '',        '')
call <sid>hi('EndOfBuffer',   s:gruberBG,         s:gruberBG,    '',        '')
call <sid>hi('LineNr',        s:gruberFG2,        s:gruberBG,    '',        '')
call <sid>hi('SignColumn',    s:gruberFG2,        s:gruberBG,    '',        '')
call <sid>hi('VertSplit',     s:gruberFG2,        s:gruberBG,    '',        '')
call <sid>hi('ColorColumn',   '',                 s:gruberBG1,   '',        '')
call <sid>hi('CursorColumn',  '',                 s:gruberBG1,   '',        '')
call <sid>hi('CursorLine',    '',                 s:gruberBG1,   'NONE',    '')
call <sid>hi('CursorLineNr',  s:gruberMain,       s:gruberBG,    '',        '')
call <sid>hi('PMenu',         s:gruberFG,         s:gruberBG1,   '',        '')
call <sid>hi('PMenuSel',      s:gruberBlack,      s:gruberMain,  '',        '')
call <sid>hi('PmenuSbar',     '',                 s:gruberBG1,   '',        '')
call <sid>hi('PmenuThumb',    '',                 s:gruberFG2,   '',        '')
call <sid>hi('helpExample',   s:gruberMain,       '',            '',        '')
call <sid>hi('helpCommand',   s:gruberMain,       '',            '',        '')

" Standard syntax highlighting - Fixed for better Emacs compatibility
call <sid>hi('Boolean',       s:gruberQuartz,     '',            '',          '')
call <sid>hi('Character',     s:gruberGreen,      '',            '',          '')
call <sid>hi('Comment',       s:gruberBrown,      '',            s:italic,    '')
call <sid>hi('Conditional',   s:gruberMain,       '',            '',          '')
call <sid>hi('Constant',      s:gruberQuartz,     '',            '',          '')
call <sid>hi('Define',        s:gruberMain,       '',            '',          '')
call <sid>hi('Delimiter',     s:gruberFG,         '',            '',          '')
call <sid>hi('Float',         s:gruberQuartz,     '',            '',          '')
call <sid>hi('Function',      s:gruberLightBlue,  '',            '',          '')
call <sid>hi('Identifier',    s:gruberFG,         '',            '',          '')
call <sid>hi('Include',       s:gruberMain,       '',            '',          '')
call <sid>hi('Keyword',       s:gruberMain,       '',            '',          '')
call <sid>hi('Label',         s:gruberMain,       '',            '',          '')
call <sid>hi('Number',        s:gruberQuartz,     '',            '',          '')
call <sid>hi('Operator',      s:gruberFG,         '',            '',          '')
call <sid>hi('PreProc',       s:gruberMain,       '',            '',          '')
call <sid>hi('Repeat',        s:gruberMain,       '',            '',          '')
call <sid>hi('Special',       s:gruberFG,         '',            '',          '')
call <sid>hi('SpecialChar',   s:gruberFG,         '',            '',          '')
call <sid>hi('Statement',     s:gruberMain,       '',            '',          '')
call <sid>hi('StorageClass',  s:gruberMain,       '',            '',          '')
call <sid>hi('String',        s:gruberGreen,      '',            '',          '')
call <sid>hi('Structure',     s:gruberMain,       '',            '',          '')
call <sid>hi('Todo',          s:gruberBlack,      s:gruberMain,  '',          '')
call <sid>hi('Type',          s:gruberMain,       '',            '',          '')
call <sid>hi('Typedef',       s:gruberMain,       '',            '',          '')

call <sid>hi('SpellBad',      '',                 '',            'undercurl', s:gruberRed)
call <sid>hi('SpellLocal',    '',                 '',            'undercurl', s:gruberMain)
call <sid>hi('SpellCap',      '',                 '',            'undercurl', s:gruberLightBlue)
call <sid>hi('SpellRare',     '',                 '',            'undercurl', s:gruberPurple)

" Shell/Bash specific highlighting
call <sid>hi('shDeref',       s:gruberFG,         '',            '',          '')
call <sid>hi('shDerefVar',    s:gruberFG,         '',            '',          '')
call <sid>hi('shVariable',    s:gruberFG,         '',            '',          '')
call <sid>hi('shFunction',    s:gruberLightBlue,  '',            '',          '')
call <sid>hi('shStatement',   s:gruberMain,       '',            '',          '')
call <sid>hi('shConditional', s:gruberMain,       '',            '',          '')
call <sid>hi('shRepeat',      s:gruberMain,       '',            '',          '')
call <sid>hi('shKeyword',     s:gruberMain,       '',            '',          '')
call <sid>hi('shTestOpr',     s:gruberMain,       '',            '',          '')
call <sid>hi('shOperator',    s:gruberFG,         '',            '',          '')
call <sid>hi('shQuote',       s:gruberGreen,      '',            '',          '')
call <sid>hi('shDoubleQuote', s:gruberGreen,      '',            '',          '')
call <sid>hi('shSingleQuote', s:gruberGreen,      '',            '',          '')
call <sid>hi('shOption',      s:gruberFG,         '',            '',          '')

" Parentheses, brackets, braces - make them white
call <sid>hi('shParenError',  s:gruberFG,         '',            '',          '')
call <sid>hi('Delimiter',     s:gruberFG,         '',            '',          '')
call <sid>hi('MatchParen',    s:gruberBlack,      s:gruberMain,  '',          '')

" All-caps variables should be bold
syntax match shAllCapsVar '\<[A-Z_][A-Z0-9_]*\>' contained
call <sid>hi('shAllCapsVar',  s:gruberFG,         '',            s:bold,      '')

" Haskell Highlighting
call <sid>hi('hsTypeDef',     s:gruberMain,       '',            '',          '')
call <sid>hi('hsStructure',   s:gruberMain,       '',            '',          '')
call <sid>hi('hsStatement',   s:gruberMain,       '',            '',          '')
call <sid>hi('hsconditional', s:gruberMain,       '',            '',          '')

" Java Highlighting
call <sid>hi('javaConstant',    s:gruberQuartz,   '',            '',          '')
call <sid>hi('javaConditional', s:gruberMain,     '',            '',          '')
call <sid>hi('javaOperator',    s:gruberFG,       '',            '',          '')
call <sid>hi('javaExceptions',  s:gruberMain,     '',            '',          '')
call <sid>hi('javaAssert',      s:gruberMain,     '',            '',          '')
call <sid>hi('javaClassDecl',   s:gruberMain,     '',            '',          '')
call <sid>hi('javaBraces',      s:gruberFG,       '',            '',          '')
call <sid>hi('javaLangObject',  s:gruberFG,       '',            '',          '')
call <sid>hi('javaType',        s:gruberMain,     '',            '',          '')

" Python Highlighting
call <sid>hi('pythonRepeat',     s:gruberMain,    '',            '',          '')
call <sid>hi('pythonOperator',   s:gruberFG,      '',            '',          '')
call <sid>hi('pythonException',  s:gruberMain,    '',            '',          '')

" Markdown highlighting
call <sid>hi('markdownCode',               s:gruberGreen,      '',          '',          '')
call <sid>hi('markdownCodeBlock',          s:gruberGreen,      '',          '',          '')
call <sid>hi('markdownHeadingDelimiter',   s:gruberRed,        '',          '',          '')
call <sid>hi('markdownItalic',             s:gruberPurple,     '',          s:italic,    '')
call <sid>hi('markdownBold',               s:gruberMain,       '',          s:bold,      '')
call <sid>hi('markdownCodeDelimiter',      s:gruberBrown,      '',          s:italic,    '')
call <sid>hi('markdownError',              s:gruberFG,         s:gruberBG1, '',          '')

" ALE highlighting
call <sid>hi('ALEErrorSign',     s:gruberRed,      s:gruberBG,    s:bold,      '')
call <sid>hi('ALEWarningSign',   s:gruberMain,     s:gruberBG,    s:bold,      '')
call <sid>hi('ALEInfoSign',      s:gruberLightBlue,s:gruberBG,    s:bold,      '')

" NERDTree highlighting
call <sid>hi('NERDTreeExecFile',  s:gruberFG,      '',            '',          '')
call <sid>hi('NERDTreeDirSlash',  s:gruberRed,     '',            '',          '')
call <sid>hi('NERDTreeOpenable',  s:gruberRed,     '',            '',          '')
call <sid>hi('NERDTreeFile',      s:gruberFG,      '',            '',          '')
call <sid>hi('NERDTreeFlags',     s:gruberRed,     '',            '',          '')

" Vimfiler highlighting
call <sid>hi('vimfilerLeaf',        s:gruberFG,     '',            '',          '')
call <sid>hi('vimfilerNormalFile',  s:gruberFG,     '',            '',          '')
call <sid>hi('vimfilerOpenedFile',  s:gruberRed,    '',            '',          '')
call <sid>hi('vimfilerClosedFile',  s:gruberRed,    '',            '',          '')

" }}}

" Terminal colors
let g:terminal_color_0=s:gruberBG[0]
let g:terminal_color_8=s:gruberBG1[0]

let g:terminal_color_1=s:gruberRed[0]
let g:terminal_color_9=s:gruberLightRed[0]

let g:terminal_color_2=s:gruberGreen[0]
let g:terminal_color_10=s:gruberGreen[0]

let g:terminal_color_3=s:gruberMain[0]
let g:terminal_color_11=s:gruberMain[0]

let g:terminal_color_4=s:gruberLightBlue[0]
let g:terminal_color_12=s:gruberLightBlue[0]

let g:terminal_color_5=s:gruberPurple[0]
let g:terminal_color_13=s:gruberPurple[0]

let g:terminal_color_6=s:gruberQuartz[0]
let g:terminal_color_14=s:gruberQuartz[0]

let g:terminal_color_7=s:gruberFG[0]
let g:terminal_color_15=s:gruberWhite[0]

let g:terminal_color_background=s:gruberBG[0]
let g:terminal_color_foreground=s:gruberFG[0]
