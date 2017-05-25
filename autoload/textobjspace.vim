let s:pattern_a = '[[:blank:] ]\+'
let s:pattern_i = ' \+'

function! textobjspace#select_a()
    return s:select(s:pattern_a)
endfunction

function! textobjspace#select_i()
    return s:select(s:pattern_i)
endfunction

function! s:select(pattern)
    if matchstr(getline('.'), '.', col('.') - 1) !~ a:pattern
        call search(a:pattern)
        if matchstr(getline('.'), '.', col('.') - 1) !~ a:pattern
            return
        endif
    endif

    call search(a:pattern, 'bc')
    let l:start = getpos('.')
    call search(a:pattern, 'ce')
    let l:end = getpos('.')
    return ['v', l:start, l:end]
endfunction
