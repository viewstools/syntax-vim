if exists("b:current_syntax")
  finish
endif

set nospell

syntax region viewsBlock start=/^\s*[A-Z]/ end=/\s\|$/

syntax match viewsProp /\s*[a-z].\+$/ contains=viewsPropValue
syntax region viewsPropValue start=/[a-z]\s/ms=s+1 end=/$/ contained contains=viewsSlot,viewsSlotNamed
syntax match viewsSlot /</ contained
syntax match viewsSlotNamed /<[a-z][a-zA-Z0-9]\*/ contained

syntax match viewsWhen /^\s*when <[a-z].\+$/
syntax match viewsWhenNegated /^\s*when <![a-z].\+$/
syntax match viewsOnWhen /^\s*onWhen <[a-z].\+$/
syntax match viewsOnWhenNegated /^\s*onWhen <![a-z].\+$/

syntax match viewsComment /^\s*#.*$/
syntax match viewsUserComment /^\s*##.*$/

highlight viewsBlock              ctermfg=Magenta
highlight viewsComment            ctermfg=Black ctermbg=DarkBlue
highlight viewsUserComment        ctermfg=Black ctermbg=DarkGray
highlight viewsPropValue          ctermfg=Green
highlight viewsSlot               ctermfg=Blue
highlight viewsSlotNamed          ctermfg=Blue
highlight viewsSlotNegated        ctermfg=Red
highlight viewsOnWhen             ctermfg=Cyan
highlight viewsOnWhenNegated      ctermfg=Cyan cterm=bold
highlight viewsWhen               ctermfg=Blue
highlight viewsWhenNegated        ctermfg=Blue cterm=bold

let b:current_syntax = "views"
