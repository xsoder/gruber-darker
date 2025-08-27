" dark.vim — Vim colorscheme matching Casey Muratori-inspired Emacs dark theme

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "dark"

" Base colors from the Emacs dark theme
let s:bg        = "#161616"
let s:fg        = "#c0c0c0"
let s:comment   = "#808080"
let s:string    = "#ffb964"
let s:keyword   = "#87afff"
let s:function  = "#afff87"
let s:constant  = "#d787ff"
let s:warning   = "#ff5f5f"
let s:command   = "#af87ff"  " darker purple for commands (like M-x in Emacs)

" Normal text
hi Normal       guifg=s:fg      guibg=s:bg

" UI
hi CursorLine   guibg=#1e1e1e
hi LineNr       guifg=#5f5f5f   guibg=s:bg
hi CursorLineNr guifg=#ffffff   guibg=#444444
hi StatusLine   guifg=#eeeeee   guibg=#444444
hi StatusLineNC guifg=#888888   guibg=#2a2a2a

" Syntax groups
hi Comment      guifg=s:comment gui=italic
hi String       guifg=s:string
hi Keyword      guifg=s:keyword gui=bold
hi Function     guifg=s:function
hi Identifier   guifg=s:fg
hi Constant     guifg=s:constant
hi Type         guifg=#5fd7af
hi PreProc      guifg=#ffaf5f
hi Error        guifg=#ffffff   guibg=s:warning
hi WarningMsg   guifg=s:warning gui=bold

" Special (commands, matches, help, search)
hi Search       guifg=#000000   guibg=#ffff87
hi IncSearch    guifg=#000000   guibg=#ffaf00
hi Special      guifg=s:command
hi Title        guifg=s:command gui=bold
hi Directory    guifg=s:command

" Diff
hi DiffAdd      guibg=#003300
hi DiffChange   guibg=#333300
hi DiffDelete   guifg=#ff5f5f guibg=#330000
hi DiffText     guibg=#444400 gui=bold

" Visual
hi Visual       guibg=#333366
