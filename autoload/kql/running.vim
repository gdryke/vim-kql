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

function! kql#running#KqlRunQueryUnderCursorSameWindow()
    silent !clear
    let query = GetQueryContent()
    echom "Running query: " . query
    let cmd = "!" . GetCommand() . " '" . query . "' "
    echom "Full command: " . cmd
    execute cmd
endfunction

function! kql#running#KqlRunQueryUnderCursor()
    silent !clear
    let query = GetQueryContent()
    let cmd = GetCommand() . " '" . query . "' "
    let results = systemlist(cmd)

   " Open a new split and set it up.
    let results_window = "__Kusto_Results__"
    let window = bufwinnr(results_window)
    if window >= 0
        execute window . "wincmd w"
    else
        execute "split " . results_window
    endif
    normal! ggdG
    setlocal filetype=kustoresults
    setlocal buftype=nofile

    " set content
     echom results[1:]
    " call append(0, split(results, '\v\n'))
    call append(0, results[1:-2])
    redraw!
endfunction

