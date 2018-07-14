" author: airlync@gmail.com
" version: 1.1
" date:2011-04-28
"
:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let g:colors_name="terminal"
:hi Normal guifg=grey75 guibg=grey2 ctermfg=grey ctermbg=black
:hi Cursor guibg=grey80 guifg=grey80 ctermfg=gray ctermbg=darkgray
:hi VertSplit guibg=grey2 guifg=grey20 gui=none ctermfg=darkgray ctermbg=gray cterm=reverse
:hi Folded guibg=black guifg=grey40 ctermfg=blue ctermbg=darkgrey
:hi FoldColumn guibg=black guifg=grey20 ctermfg=darkgrey ctermbg=darkgrey cterm=bold,reverse
:hi IncSearch guifg=green guibg=black cterm=none ctermfg=yellow ctermbg=green
:hi ModeMsg guifg=goldenrod cterm=none ctermfg=brown
:hi MoreMsg guifg=SeaGreen ctermfg=darkgreen
:hi NonText guifg=RoyalBlue guibg=grey15 cterm=bold ctermfg=blue
:hi Question guifg=springgreen ctermfg=green
:hi Search guibg=grey60 guifg=grey2 cterm=none ctermfg=grey ctermbg=blue
:hi SpecialKey guifg=yellowgreen ctermfg=darkgreen
:hi StatusLine guibg=grey40 guifg=grey70 gui=none ctermfg=darkgray ctermbg=lightgray cterm=reverse
:hi StatusLineNC guibg=grey25 guifg=grey55 gui=none ctermfg=darkgray ctermbg=lightgray cterm=bold,reverse
:hi Title guifg=gold gui=bold cterm=bold ctermfg=yellow ctermbg=darkgrey
:hi Statement guifg=#3366FF ctermfg=lightblue
:hi Visual gui=none guifg=khaki guibg=olivedrab cterm=reverse
:hi WarningMsg guifg=grey60 ctermfg=1
:hi String guifg=#33CCFF ctermfg=darkcyan
:hi Comment term=bold ctermfg=11 guifg=grey50
:hi Constant guifg=#CC33CC ctermfg=brown
:hi Special guifg=#FF33CC ctermfg=brown
:hi Identifier guifg=salmon ctermfg=red
:hi Include guifg=#CC0033 ctermfg=red
:hi PreProc guifg=#CC0033 guibg=grey5 ctermfg=red
:hi Operator guifg=#CC00CC ctermfg=Red
:hi Define guifg=gold gui=bold ctermfg=yellow
:hi Type guifg=#0066CC ctermfg=2
:hi Function guifg=navajowhite ctermfg=brown
:hi Structure guifg=green ctermfg=green
:hi LineNr guifg=grey50 guibg=black ctermfg=lightgray ctermbg=darkgray
:hi Ignore guifg=grey40 cterm=bold ctermfg=7
:hi Todo guifg=orangered guibg=grey20
:hi Directory ctermfg=darkcyan
:hi ErrorMsg cterm=bold guifg=red guibg=grey2 cterm=bold ctermfg=7 ctermbg=1
:hi VisualNOS cterm=bold,underline
:hi WildMenu ctermfg=1 ctermbg=3
:hi DiffAdd ctermbg=4
:hi DiffChange ctermbg=5
:hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
:hi DiffText cterm=bold ctermbg=1
:hi Underlined cterm=underline ctermfg=5
:hi Error guifg=yellow guibg=grey2 cterm=bold ctermfg=7 ctermbg=1
:hi SpellErrors guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi TabLine ctermfg=darkgrey ctermbg=darkgrey cterm=bold,reverse
:hi TabLineSel ctermfg=darkgrey ctermbg=darkgrey cterm=bold,reverse
:hi TabLineFill ctermfg=darkgrey ctermbg=darkgrey cterm=bold,reverse
:hi Pmenu guifg=grey70 guibg=gray10 ctermfg=darkgray ctermbg=grey
:hi PmenuSel guifg=gray20 guibg=gray80 cterm=bold ctermfg=gray ctermbg=darkgrey
:hi PmenuSbar guifg=grey75 guibg=gray20 ctermfg=green ctermbg=darkred
:hi PmenuThumb guifg=grey50 ctermfg=gray ctermbg=darkgrey
