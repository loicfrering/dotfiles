if &ft != 'php'
  setlocal tabstop=2
  setlocal softtabstop=2
  setlocal shiftwidth=2

  let g:syntastic_html_tidy_ignore_errors=['trimming empty']
endif
