if exists("b:current_syntax")
  finish
endif

set nospell

syntax region viewsBlock start=/^\s*[A-Z]/ end=/\s\|$/

syntax match viewsProp /\s*[a-z].\+$/ contains=viewsPropValue
syntax region viewsPropValue start=/\s/ end=/$/ contained contains=viewsCode
syntax match viewsCode /.*props.*/ contained

syntax match viewsCode /^when.\+$/
syntax match viewsOnWhen /^onWhen.\+$/

syntax match viewsComment /^\s*#.*$/
syntax match viewsUserComment /^\s*##.*$/

highlight viewsBlock              ctermfg=Magenta
highlight viewsComment            ctermfg=Black ctermbg=DarkBlue
highlight viewsUserComment        ctermfg=Black ctermbg=DarkGray
highlight viewsPropValue          ctermfg=Green
highlight viewsCode               ctermfg=Blue
highlight viewsOnWhen             ctermfg=Cyan

let b:current_syntax = "views"
