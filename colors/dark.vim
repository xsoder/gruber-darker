" dark.vim — Vim port of Casey Muratori-inspired Emacs dark theme

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "dark"

" Colors from Emacs theme
let s:bg        = "#161616"
let s:fg        = "#ffffff"
let s:cursor    = "#40FF40"
let s:hl_line   = "#191970"
let s:selection = "#191970"
let s:bracket   = "#cdaa7d"
let s:string    = "#6b8e23"
let s:comment   = "#7f7f7f"
let s:keyword   = "#cd950c"
let s:constant  = "#6b8e23"
let s:invalid   = "#f44747"
let s:command   = "#61afef"
let s:purple    = "#654CA8"

function! s:hi(group, guifg, guibg, attr)
  let l:cmd = 'hi ' . a:group
  if a:guifg != ''
    let l:cmd .= ' guifg=' . a:guifg
  endif
  if a:guibg != ''
    let l:cmd .= ' guibg=' . a:guibg
  endif
  if a:attr != ''
    let l:cmd .= ' gui=' . a:attr . ' cterm=' . a:attr
  endif
  execute l:cmd
endfunction

" --------------------------
" UI Elements
" --------------------------
call s:hi('Normal',       s:fg,       s:bg,        '')
call s:hi('Cursor',       s:bg,       s:cursor,    '')
call s:hi('CursorLine',   '',         s:hl_line,   'NONE')
call s:hi('CursorColumn', '',         s:hl_line,   '')
call s:hi('Visual',       '',         s:selection, '')
call s:hi('LineNr',       s:comment,  s:bg,        '')
call s:hi('CursorLineNr', s:fg,       s:hl_line,   'bold')
call s:hi('VertSplit',    s:comment,  s:bg,        '')
call s:hi('MatchParen',   s:fg,       s:purple,    'bold')

" --------------------------
" Search
" --------------------------
call s:hi('Search',       s:fg,       s:purple,    'bold')
call s:hi('IncSearch',    s:fg,       s:purple,    'bold')
call s:hi('Error',        s:invalid,  '',          'bold')
call s:hi('WarningMsg',   s:invalid,  '',          'bold')

" --------------------------
" Syntax
" --------------------------
call s:hi('Keyword',      s:keyword,  '', 'bold')
call s:hi('Statement',    s:keyword,  '', 'bold')
call s:hi('Type',         s:bracket,  '', '')
call s:hi('Identifier',   s:bracket,  '', '')
call s:hi('Function',     s:bracket,  '', '')
call s:hi('Constant',     s:constant, '', '')
call s:hi('String',       s:string,   '', '')
call s:hi('Comment',      s:comment,  '', '')

" --------------------------
" Command / Completion / Titles
" --------------------------
call s:hi('Title',        s:command,  '',          'bold')
call s:hi('Directory',    s:command,  '',          'bold')
call s:hi('Pmenu',        s:fg,       s:hl_line,   '')
call s:hi('PmenuSel',     s:bg,       s:cursor,    'bold')

" --------------------------
" Terminal colors (Neovim)
" --------------------------
let g:terminal_color_0  = s:bg
let g:terminal_color_1  = s:invalid
let g:terminal_color_2  = s:string
let g:terminal_color_3  = s:keyword
let g:terminal_color_4  = s:command
let g:terminal_color_5  = s:purple
let g:terminal_color_6  = s:bracket
let g:terminal_color_7  = s:fg
let g:terminal_color_8  = s:comment
let g:terminal_color_15 = s:fg
