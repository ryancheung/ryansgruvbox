" -----------------------------------------------------------------------------
" File: gruvbox.vim
" Description: Retro groove color scheme for Vim
" Author: morhetz <morhetz@gmail.com>
" Source: https://github.com/morhetz/gruvbox
" Last Modified: 09 Apr 2014
" -----------------------------------------------------------------------------

function! ryansgruvbox#invert_signs_toggle()
  if g:gruvbox_invert_signs == 0
    let g:gruvbox_invert_signs=1
  else
    let g:gruvbox_invert_signs=0
  endif

  colorscheme gruvbox
endfunction

" Search Highlighting {{{

function! ryansgruvbox#hls_show()
  set hlsearch
  call GruvboxHlsShowCursor()
endfunction

function! ryansgruvbox#hls_hide()
  set nohlsearch
  call GruvboxHlsHideCursor()
endfunction

function! ryansgruvbox#hls_toggle()
  if &hlsearch
    call ryansgruvbox#hls_hide()
  else
    call ryansgruvbox#hls_show()
  endif
endfunction

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
