set background=dark
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='bleen'

let s:style_u = 'none'
let s:style_ub = 'bold'
if get(g:, 'bleen_use_underline')
    let s:style_u = 'underline'
    let s:style_ub .= ',underline'
endif

let s:black          = { 'cterm': 'Black', 'gui': '#202020' }
let s:darker_black   = { 'cterm': 'Black', 'gui': '#101010' }
let s:darkest_black  = { 'cterm': 'Black', 'gui': '#000000' }

let s:gray           = { 'cterm': 'DarkGray', 'gui': '#666666' }

let s:white          = { 'cterm': 'White', 'gui': '#ffffff' }
let s:darker_white   = { 'cterm': 'Gray',  'gui': '#d0d0d0' }

let s:navy           = { 'cterm': 'Black', 'gui': '#1a1a20' }

let s:blue           = { 'cterm': 'Blue',     'gui': '#4989ff' }
let s:darker_blue    = { 'cterm': 'DarkBlue', 'gui': '#24467f' }
let s:darkest_blue   = { 'cterm': 'Black',    'gui': '#12233f' }

let s:cyan           = { 'cterm': 'Cyan',     'gui': '#80d8ff' }
let s:darker_cyan    = { 'cterm': 'DarkCyan', 'gui': '#416c7f' }
let s:darkest_cyan   = { 'cterm': 'Black',    'gui': '#20363f' }

let s:orange         = { 'cterm': 'Yellow',     'gui': '#ff7459' }
let s:darker_orange  = { 'cterm': 'DarkYellow', 'gui': '#7f392c' }
let s:darkest_orange = { 'cterm': 'Black',      'gui': '#3f1c16' }

let s:rose           = { 'cterm': 'Red',     'gui': '#ff4097' }
let s:darker_rose    = { 'cterm': 'DarkRed', 'gui': '#7f214d' }
let s:darkest_rose   = { 'cterm': 'Black',   'gui': '#3f1026' }

let s:yellow         = { 'cterm': 'Yellow',     'gui': '#f7ff40' }
let s:darker_yellow  = { 'cterm': 'DarkYellow', 'gui': '#7c7f21' }
let s:darkest_yellow = { 'cterm': 'Black',      'gui': '#3e3f10' }

let s:turquoise         = { 'cterm': 'Green',     'gui': '#00ffcc' }
let s:darker_turquoise  = { 'cterm': 'DarkGreen', 'gui': '#007f66' }
let s:darkest_turquoise = { 'cterm': 'Black',     'gui': '#003f33' }

" https://github.com/noahfrederick/vim-hemisu/
function! s:hi(group, style)
  execute "highlight" a:group
    \ 'cterm='   (has_key(a:style, 'style') ? a:style.style    : 'NONE')
    \ 'ctermfg=' (has_key(a:style, 'fg')    ? a:style.fg.cterm : 'NONE')
    \ 'ctermbg=' (has_key(a:style, 'bg')    ? a:style.bg.cterm : 'NONE')
    \ 'gui='     (has_key(a:style, 'style') ? a:style.style    : 'NONE')
    \ 'guifg='   (has_key(a:style, 'fg')    ? a:style.fg.gui   : 'NONE')
    \ 'guibg='   (has_key(a:style, 'bg')    ? a:style.bg.gui   : 'NONE')
    \ 'guisp='   (has_key(a:style, 'sp')    ? a:style.sp.gui   : 'NONE')
endfunction

hi Normal ctermfg=Gray guifg=#d0d0d0 guibg=#1a1a20
hi Bold gui=bold

call s:hi('Error', { 'fg': s:rose, 'bg': s:navy })
call s:hi('Todo',  { 'fg': s:yellow,     'bg': s:navy })

call s:hi('ErrorMsg',   { 'fg': s:rose,   'bg': s:darkest_rose, 'style': 'bold' })
call s:hi('WarningMsg', { 'fg': s:yellow, 'bg': s:navy })
call s:hi('MoreMsg',    { 'style': 'bold',  'fg': s:cyan })
call s:hi('Question',   { 'fg': s:blue })

call s:hi('FoldColumn', { 'fg': s:blue, 'bg': s:navy })
call s:hi('Folded', { 'fg': s:blue, 'bg': s:darkest_blue })

call s:hi('Title', {'style': 'bold', 'fg': s:white })
call s:hi('Conceal', { 'fg': s:turquoise, 'bg': s:darkest_turquoise })
call s:hi('Cursor', {'style': 'bold,reverse', 'fg': s:white })
call s:hi('NonText', { 'fg': s:darker_yellow, 'bg': s:navy })
call s:hi('LineNr', { 'fg': s:darker_blue, 'bg': s:navy })
call s:hi('SignColumn', { 'bg': s:navy })
call s:hi('ColorColumn',  { 'bg':  s:darker_black })
call s:hi('CursorColumn', { 'bg':  s:darker_black })
call s:hi('CursorLine',   { 'bg':  s:navy })
call s:hi('CursorLineNr', { 'style': 'bold', 'fg': s:blue, 'bg': s:navy })

call s:hi('PMenu', { 'fg': s:darker_cyan, 'bg': s:darker_black })
call s:hi('PMenuSel', { 'style': s:style_ub, 'fg': s:cyan, 'bg': s:darkest_cyan })
call s:hi('PMenuSbar',  { 'bg': s:darkest_cyan })
call s:hi('PMenuThumb', { 'bg': s:darker_cyan })

call s:hi('Comment', { 'fg': s:darker_cyan })
call s:hi('Constant', { 'style': 'bold', 'fg': s:cyan })
call s:hi('String', { 'style': 'bold', 'fg': s:white })
call s:hi('Identifier', { 'fg': s:blue })
call s:hi('Statement', {  'fg': s:gray })
call s:hi('PreProc', { 'style': 'bold', 'fg': s:gray })
call s:hi('Type', { 'fg': s:blue })

call s:hi('Special', { 'style': 'bold', 'fg': s:gray })
call s:hi('SpecialKey', { 'fg': s:gray })

call s:hi('Search',     { 'style': s:style_u,  'fg': s:orange,      'bg': s:navy })
call s:hi('IncSearch',  { 'style': s:style_ub, 'fg': s:orange,      'bg': s:navy })
call s:hi('MatchParen', { 'style': 'bold',     'fg': s:rose,        'bg': s:darkest_rose })
call s:hi('Visual',     { 'fg':  s:cyan,     'bg': s:darkest_cyan })

call s:hi('SpellBad',   { 'style': 'undercurl', 'sp': s:rose   })
call s:hi('SpellLocal', { 'style': 'undercurl', 'sp': s:yellow })
call s:hi('SpellCap',   { 'style': 'undercurl', 'sp': s:yellow })
call s:hi('SpellRare',  { 'style': 'undercurl', 'sp': s:yellow })

call s:hi('DiffAdd',    { 'bg': s:darkest_blue })
call s:hi('DiffChange', { 'bg': s:darkest_turquoise })
call s:hi('DiffDelete', { 'bg': s:darkest_rose })
call s:hi('DiffText',   { 'bg': s:darkest_yellow })

hi VertSplit cterm=none ctermfg=Blue ctermbg=DarkBlue gui=none guifg=#101010 guibg=#101010
hi StatusLine cterm=none ctermfg=Gray ctermbg=DarkBlue gui=none guifg=#666666 guibg=#101010
hi StatusLineNC cterm=none ctermfg=Black ctermbg=DarkBlue gui=none guifg=#101010 guibg=#101010
hi WildMenu cterm=bold ctermfg=White ctermbg=Blue gui=bold guifg=#80d8ff guibg=#101010

call s:hi('Directory', { 'fg': s:darker_white })
