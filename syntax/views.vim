if exists("b:current_syntax")
  finish
endif

set nospell

syntax region viewsBlock start=/^\s*[A-Z]/ end=/\s\|$/

syntax match viewsProp /\s*[a-z].\+$/ contains=viewsPropValue
syntax region viewsPropValue start=/\s/ end=/$/ contained contains=viewsSlot,viewsSlotNamed
syntax match viewsSlot /</ contained
syntax match viewsSlotNamed /<[a-z][a-zA-Z0-9]\*/ contained

syntax match viewsWhen /^when.\+$/
syntax match viewsOnWhen /^onWhen.\+$/

syntax match viewsComment /^\s*#.*$/
syntax match viewsUserComment /^\s*##.*$/

highlight viewsBlock              ctermfg=Magenta
highlight viewsComment            ctermfg=Black ctermbg=DarkBlue
highlight viewsUserComment        ctermfg=Black ctermbg=DarkGray
highlight viewsPropValue          ctermfg=Green
highlight viewsWhen               ctermfg=Blue
highlight viewsSlot               ctermfg=Blue
highlight viewsSlotNamed               ctermfg=Blue
highlight viewsOnWhen             ctermfg=Cyan

let b:current_syntax = "views"
