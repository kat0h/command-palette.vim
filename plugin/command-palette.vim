" Use command palette like VSCode
"
" Maintainer: KotaKato <twitter: @uvrub>

function! OpenCommandPalette()
    let s:windowId = popup_create(term_start([&shell], #{hidden: 1, term_finish: 'close'}), #{ border: [1, 1, 1, 1], minwidth: winwidth(0)/2, minheight: &lines/2 })
endfunction

command CommandPalette call OpenCommandPalette()
