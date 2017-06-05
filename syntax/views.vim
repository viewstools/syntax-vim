" v0.0.1

if exists("b:current_syntax")
  finish
endif

set nospell

syntax region viewsBlock start=/^\s*[A-Z]/ end=/\s\|$/

syntax match viewsProp /^\s*[a-z].\+$/ contains=viewsPropValue,viewsPropMargin,viewsPropPadding

syntax match viewsPropMargin /margin.\+/ contained contains=viewsPropMarginValue
syntax match viewsPropMarginValue /[0-9]\+/ contained

syntax match viewsPropPadding /padding.\+/ contained contains=viewsPropPaddingValue
syntax match viewsPropPaddingValue /[0-9]\+/ contained

syntax region viewsPropValue start=/\s/ end=/$/ contained contains=viewsPropValueCode,viewsPropProxied

syntax match viewsPropProxied /[A-Z][a-zA-Z0-9]\+$/ contained

syntax match viewsPropValueCode /.*props.*/ contained
syntax match viewsPropValueCode /.*item.*/ contained
syntax match viewsPropValueCode /.\+\.data/ contained

syntax match viewsComment /\v# .*$/

highlight viewsBlock              ctermfg=Red
highlight viewsComment            ctermfg=Black ctermbg=DarkBlue
highlight viewsPropValue          ctermfg=Green
highlight viewsPropValueCode      ctermfg=Blue
highlight viewsPropValueData      ctermfg=Blue
highlight viewsPropMarginValue    ctermfg=Magenta
highlight viewsPropPaddingValue   ctermfg=Yellow guifg=#80a0ff
highlight viewsPropProxied        ctermfg=Red

let b:current_syntax = "views"
