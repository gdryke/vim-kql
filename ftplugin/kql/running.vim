if !exists("g:ai_command")
    let g:ai_command = "az monitor app-insights query -a '" . $KUSTO_APP_ID . "' --analytics-query"
endif

function! GetCommand()
    return "kusto-cli -c '" . g:kusto_cluster . "' -d '" . g:kusto_db . "' -q"
endfunction

function! PreviousBlankLine(lnum)
    let current = a:lnum

    while current > 1
        let current -= 1
        if getline(current) =~? '\v^\s*$'
            return current + 1
        endif
    endwhile

    return current
endfunction

function! NextBlankLine(lnum)
    let numlines = line('$')
    let current = a:lnum

    while current <= numlines
        let current += 1
        if getline(current) =~? '\v^\s*$'
            return current - 1
        endif
    endwhile

    return current
endfunction

function! GetQueryContent()
    let currentLine = line(".")
    let previousBlankLine = PreviousBlankLine(currentLine)
    let nextBlankLine = NextBlankLine(currentLine)
    return join(getline(previousBlankLine, nextBlankLine))
endfunction

function! KqlRunQueryUnderCursor()
    silent !clear
    let query = GetQueryContent()
    echom "Running query: " . query
    let cmd = "!" . GetCommand() . " '" . query . "' "
    echom "Full command: " . cmd
    execute cmd
endfunction

nnoremap <buffer> <localleader>r :call KqlRunQueryUnderCursor()<cr>
