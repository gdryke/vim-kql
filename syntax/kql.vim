if exists("b:current_syntax")
    finish
endif

syntax keyword kqlKeyword |
highlight link kqlKeyword Keyword

syntax keyword kqlFunction ago by asc desc count by bin  on
syntax keyword kqlFunction timechart barchart areachart
" joins
syntax keyword kqlFunction outer inner leftouter leftinner rightouter rightinner full
highlight link kqlFunction PreProc


syntax match kqlOperator "\v\+"
syntax match kqlOperator "\v\*"
syntax match kqlOperator "\v\-"
syntax match kqlOperator "\v\=\~"
syntax match kqlOperator "\v\="
syntax match kqlOperator "\v/"
syntax match kqlOperator "\v\>"
syntax match kqlOperator "\v\<"
syntax keyword kqlOperator !contains
syntax keyword kqlOperator contains
syntax keyword kqlOperator and
syntax keyword kqlOperator or

highlight link kqlOperator Operator

syntax match kqlComment "\v\/\/.*$"
highlight link kqlComment Comment

syntax keyword kqlType take where join project order summarize render
highlight link kqlType Type

syntax region kqlString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region kqlString start=/\v'/ skip=/\v\\./ end=/\v'/
highlight link kqlString String

syntax match kqlConstant "\v[0-9]([0-9]|d)*"
highlight link kqlConstant Constant

let b:current_syntax = "kql"
