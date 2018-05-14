scriptencoding utf-8

augroup myFiletypes
    au!

    au BufRead,BufNewFile BUCK setlocal filetype=python
    au BufRead,BufNewFile Podfile setlocal filetype=ruby
    au BufRead,BufNewFile *.md,*.markdown setlocal filetype=ghmarkdown
    au BufRead,BufNewFile .amethyst setlocal filetype=json
    au BufRead,BufNewFile .jrnl_config setlocal filetype=json
    au BufRead,BufNewFile *.pde setlocal filetype=java
    au BufRead,BufNewFile *.gradle setlocal filetype=groovy
    au BufRead,BufNewFile gitconfig setlocal filetype=gitconfig
    au BufRead,BufNewFile .eslintrc setlocal filetype=json
    au BufRead,BufNewFile .jscsrc setlocal filetype=json
    au BufRead,BufNewFile *.sqlite setlocal filetype=sql
    au BufRead,BufNewFile *.hs setlocal filetype=haskell
    au BufRead,BufNewFile *.swift setlocal filetype=swift
    au BufRead,BufNewFile *.swifttemplate setlocal filetype=swift

    " Reset concealcursor in Vim help
    au FileType help setlocal concealcursor=
augroup END
