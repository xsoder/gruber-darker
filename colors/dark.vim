" dark.vim — Vim colorscheme matching Casey Muratori-inspired Emacs dark theme

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "dark"

" Base colors
let s:bg        = "#161616"
let s:fg        = "#c0c0c0"
let s:comment   = "#808080"
let s:string    = "#ffb964"
let s:keyword   = "#87afff"
let s:function  = "#afff87"
let s:constant  = "#d787ff"
let s:warning   = "#ff5f5f"
let s:command   = "#af87ff"

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

" Normal text
call s:hi('Normal',       s:fg,      s:bg,      '')

" UI
call s:hi('CursorLine',   '',        "#1e1e1e", 'NONE')
call s:hi('LineNr',       s:comment, s:bg,      '')
call s:hi('CursorLineNr', "#ffffff", "#444444", 'bold')
call s:hi('StatusLine',   "#eeeeee", "#444444", 'NONE')
call s:hi('StatusLineNC', "#888888", "#2a2a2a", 'NONE')

" Syntax groups
call s:hi('Comment',      s:comment, '',        'italic')
call s:hi('String',       s:string,  '',        '')
call s:hi('Keyword',      s:keyword, '',        'bold')
call s:hi('Function',     s:function,'',        '')
call s:hi('Identifier',   s:fg,      '',        '')
call s:hi('Constant',     s:constant,'',        '')
call s:hi('Type',         "#5fd7af", '',        '')
call s:hi('PreProc',      "#ffaf5f", '',        '')
call s:hi('Error',        "#ffffff", s:warning, 'bold')
call s:hi('WarningMsg',   s:warning, '',        'bold')

" Special
call s:hi('Search',       "#000000", "#ffff87", 'NONE')
call s:hi('IncSearch',    "#000000", "#ffaf00", 'NONE')
call s:hi('Special',      s:command, '',        '')
call s:hi('Title',        s:command, '',        'bold')
call s:hi('Directory',    s:command, '',        '')

" Diff
call s:hi('DiffAdd',      '',        "#003300", '')
call s:hi('DiffChange',   '',        "#333300", '')
call s:hi('DiffDelete',   "#ff5f5f", "#330000", '')
call s:hi('DiffText',     '',        "#444400", 'bold')

" Visual
call s:hi('Visual',       '',        "#333366", '')
