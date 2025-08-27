" Dark Theme for Vim (ported from Casey Muratori's Emacs theme)

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="dark"

" --------------------------
" Color definitions
" --------------------------
let s:bg        = ['#161616',  '234']
let s:fg        = ['#ffffff',  '15']
let s:cursor    = ['#40FF40',  '40']
let s:hl_line   = ['#191970',  '17']
let s:selection = ['#191970',  '17']
let s:bracket   = ['#cdaa7d',  '179']
let s:string    = ['#6b8e23',  '64']
let s:comment   = ['#7f7f7f',  '244']
let s:keyword   = ['#cd950c',  '178']
let s:constant  = ['#6b8e23',  '64']
let s:invalid   = ['#f44747',  '196']
let s:command   = ['#61afef',  '75']
let s:purple    = ['#654CA8',  '98']
let s:none      = ['NONE', 'NONE']

" --------------------------
" Highlight helper
" --------------------------
function! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg[0] . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg[0] . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfunction

" --------------------------
" UI elements
" --------------------------
call <sid>hi('Normal',      s:fg,       s:bg,        '')
call <sid>hi('Cursor',      s:bg,       s:cursor,    '')
call <sid>hi('CursorLine',  '',         s:hl_line,   'NONE')
call <sid>hi('CursorColumn','',         s:hl_line,   '')
call <sid>hi('Visual',      '',         s:selection, '')
call <sid>hi('LineNr',      s:comment,  s:bg,        '')
call <sid>hi('VertSplit',   s:comment,  s:bg,        '')
call <sid>hi('MatchParen',  s:fg,       s:purple,    'bold')

" --------------------------
" Search
" --------------------------
call <sid>hi('Search',      s:fg,       s:purple,    'bold')
call <sid>hi('IncSearch',   s:fg,       s:purple,    'bold')

" --------------------------
" Syntax
" --------------------------
call <sid>hi('Keyword',     s:keyword,  '', 'bold')
call <sid>hi('Type',        s:bracket,  '', '')
call <sid>hi('Identifier',  s:bracket,  '', '')
call <sid>hi('Function',    s:bracket,  '', '')
call <sid>hi('Constant',    s:constant, '', '')
call <sid>hi('String',      s:string,   '', '')
call <sid>hi('Comment',     s:comment,  '', '')
call <sid>hi('Statement',   s:keyword,  '', 'bold')
call <sid>hi('Error',       s:invalid,  '', 'bold')

" --------------------------
" Command / Completion
" --------------------------
call <sid>hi('Pmenu',       s:fg,       s:hl_line,   '')
call <sid>hi('PmenuSel',    s:bg,       s:cursor,    'bold')
call <sid>hi('Title',       s:command,  '',          'bold')
call <sid>hi('Directory',   s:command,  '',          'bold')

" --------------------------
" Terminal colors
" --------------------------
let g:terminal_color_0  = s:bg[0]
let g:terminal_color_7  = s:fg[0]
let g:terminal_color_1  = s:invalid[0]
let g:terminal_color_2  = s:string[0]
let g:terminal_color_3  = s:keyword[0]
let g:terminal_color_4  = s:command[0]
let g:terminal_color_5  = s:purple[0]
let g:terminal_color_6  = s:bracket[0]
let g:terminal_color_8  = s:comment[0]
let g:terminal_color_15 = s:fg[0]
