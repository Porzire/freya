hi clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let colors_name = "freya"

let s:is_gui = has('gui_running')

if !exists('g:freya_highlight_comment')
  let g:freya_highlight_comment = 0
endif

if s:is_gui
  hi Comment  cterm=NONE    ctermfg=244  ctermbg=bg  gui=NONE  guifg=#808080 guibg=bg
else
  if g:freya_highlight_comment
    hi Comment ctermbg=NONE ctermfg=241 guibg=NONE guifg=#515F6A cterm=italic gui=italic
  else
    hi Comment ctermbg=NONE ctermfg=241 guibg=NONE guifg=#515F6A cterm=NONE   gui=NONE
  endif
endif

hi Normal ctermbg=236 ctermfg=7 cterm=none guibg=#262626 guifg=#dcdccc gui=none " Background

hi Cursor                  guibg=fg guifg=bg gui=none
hi CursorColumn            guibg=#3f3f3f gui=none
hi CursorLine  ctermbg=235 cterm=none guibg=#3f3f3f gui=none
hi DiffAdd                 guibg=#008b00 guifg=fg gui=none
hi DiffChange              guibg=#00008b guifg=fg gui=none
hi DiffDelete              guibg=#8b0000 guifg=fg gui=none
hi DiffText                guibg=#0000cd guifg=fg gui=bold
hi Directory   ctermfg=222 guibg=bg guifg=#d4b064 gui=none
hi ErrorMsg                guibg=bg guifg=#f07070 gui=bold
hi FoldColumn  ctermbg=bg  guibg=bg guifg=#c2b680 gui=none
hi Folded guibg=#101010 guifg=#c2b680 gui=none
hi IncSearch guibg=#866a4f guifg=fg gui=none
hi LineNr ctermfg=239 guibg=bg guifg=#666666 gui=none
hi ModeMsg guibg=bg guifg=fg gui=bold
hi MoreMsg guibg=bg guifg=#dabfa5 gui=bold
hi NonText ctermfg=8 guibg=bg guifg=#9f8f80 gui=bold
hi Pmenu  guibg=#a78869 guifg=#000000 gui=none
hi PmenuSbar guibg=#B99F86 guifg=fg gui=none
hi PmenuSel guibg=#c0aa94 guifg=bg gui=none
hi PmenuThumb guibg=#f7f7f1 guifg=bg gui=none
hi Question guibg=bg guifg=#dabfa5 gui=bold
hi Search guibg=#c0aa94 guifg=bg gui=none
hi SignColumn ctermbg=bg guibg=bg guifg=#c2b680 gui=none
hi SpecialKey guibg=bg guifg=#d4b064 gui=none
if has("spell")
  hi SpellBad guisp=#f07070 gui=undercurl
  hi SpellCap guisp=#7070f0 gui=undercurl
  hi SpellLocal guisp=#70f0f0 gui=undercurl
  hi SpellRare guisp=#f070f0 gui=undercurl
endif
hi StatusLine ctermbg=7 ctermfg=0 guibg=#736559 guifg=#f7f7f1 gui=bold
hi StatusLineNC ctermbg=8 ctermfg=0 guibg=#564d43 guifg=#f7f7f1 gui=none
hi TabLine guibg=#564d43 guifg=#f7f7f1 gui=underline
hi TabLineFill guibg=#564d43 guifg=#f7f7f1 gui=underline
hi TabLineSel guibg=bg guifg=#f7f7f1 gui=bold
hi Title ctermbg=0 ctermfg=15 guifg=#f7f7f1 gui=bold
if version >= 700
  hi Visual ctermbg=7 ctermfg=0 guibg=#5f5f5f gui=none
else
  hi Visual ctermbg=7 ctermfg=0 guibg=#5f5f5f guifg=fg gui=none
endif
hi VisualNOS guibg=bg guifg=#c0aa94 gui=bold,underline
hi WarningMsg guibg=bg guifg=#f07070 gui=none
hi WildMenu guibg=#c0aa94 guifg=bg gui=bold
" Grid
hi VertSplit    ctermfg=235 guibg=#564d43 guifg=#f7f7f1 gui=none

hi ColorColumn  ctermbg=239 guibg=#393939
hi Constant     ctermfg=157 guibg=bg guifg=#afe091 gui=none
hi Error                    guibg=bg guifg=#f07070 gui=none
hi Identifier   ctermfg=223 guibg=bg guifg=#dabfa5 gui=none  " function keywords (e.g. max)
hi Ignore                   guibg=bg guifg=bg gui=none
hi lCursor                  guibg=#c0aa94 guifg=bg gui=none
hi MatchParen               guibg=#008b8b gui=none
hi PreProc      ctermfg=182 guibg=bg guifg=#c2aed0 gui=none  " Special constants (e.g. None)
hi Special                  guibg=bg guifg=#d4b064 gui=none
hi Statement    ctermfg=216 guibg=bg guifg=#e0af91 gui=bold  " statement keywords (e.g. def)
hi Todo                     guibg=#aed0ae guifg=bg gui=none
hi Type         ctermfg=223 guibg=bg guifg=#dabfa5 gui=bold  " type/class name
hi Underlined               guibg=bg guifg=#d4b064 gui=underline

hi htmlBold ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=bold
hi htmlItalic ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=italic
hi htmlUnderline ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=underline
hi htmlBoldItalic ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=bold,italic
hi htmlBoldUnderline ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=bold,underline
hi htmlBoldUnderlineItalic ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=bold,underline,italic
hi htmlUnderlineItalic ctermbg=0 ctermfg=15 guibg=bg guifg=fg gui=underline,italic
