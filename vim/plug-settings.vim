scriptencoding utf-8

"colorscheme molokai

"hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" ----- bling/vim-airline settings ----- {{{
let g:airline_detect_paste=1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#wordcount#filetypes = '\vhelp|markdown|pandoc|rst|org'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_theme = 'molokai'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
"  }}}

" ----- majutsushi/tagbar settings ----- {{{
" Order tags based on file order; don't sort alphabetically
let g:tagbar_sort = 0

" Treat .ts in Vim as .js in ctags
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'JavaScript',
  \ 'kinds': [
    \ 'f:functions',
    \ 'c:classes',
    \ 'm:members',
    \ 'p:properties',
    \ 'v:globals',
  \ ]
\ }

let g:tagbar_type_javascript = {
  \ 'ctagstype': 'js',
  \ 'replace': 1,
  \ 'ctagsbin': '~/bin/gtags',
  \ 'kinds': [
    \ 'c:class',
    \ 'm:method',
    \ 'p:property',
    \ 'f:function',
    \ 'o:object',
    \ 'n:constant',
  \ ],
\ }

let g:tagbar_type_coffee = {
  \ 'ctagstype': 'CoffeeScript',
  \ 'kinds': [
    \ 'n:constants',
    \ 'c:classes',
    \ 'm:methods',
    \ 'f:functions',
  \ ]
\ }

if executable('ripper-tags')
  let g:tagbar_type_ruby = {
      \ 'kinds' : [
          \ 'm:modules',
          \ 'c:classes',
          \ 'f:methods',
          \ 'F:singleton methods',
          \ 'C:constants',
          \ 'a:aliases'
      \ ],
      \ 'ctagsbin': 'ripper-tags',
      \ 'ctagsargs': '--fields=+n -f -'
  \ }
endif

let g:tagbar_type_eruby = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Headings',
    \ ]
\ }

" }}}

"" ----- xolox/vim-easytags settings ----- {{{
"set tags=./tags;,~/.vimtags
"let g:easytags_events = ['BufReadPost', 'BufWritePost']
"let g:easytags_async = 1
"let g:easytags_dynamic_files = 2
"let g:easytags_resolve_links = 1
"let g:easytags_suppress_ctags_warning = 1

"" \     'stdout_opt': '-f -'
"" \     'stdout_opt': '-f -'
"let g:easytags_languages = {
"\   'javascript.jsx': {
"\     'cmd': '~/bin/gtags'
"\   },
"\   'ruby': {
"\     'cmd': 'ripper-tags'
"\   }
"\ }

"" }}}

" ----- scrooloose/syntastic settings ----- {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}

" ----- ntpeters/vim-better-whitespace ----- {{{
" Don't highlight whitespace in git commit messages (for diffs)...
let g:better_whitespace_filetypes_blacklist=['gitcommit']
" ... but strip it on save so that we're still safe
augroup vimBetterWhiteSpace
  autocmd FileType gitcommit autocmd BufWritePre <buffer> StripWhitespace
augroup END

" Use Solarized colors for highlighting
highlight Extrawhitespace ctermbg=red guibg=#dc322f

" }}}

" ----- fzf ----- {{{
" <CR> to open in new tab, <C-E> for current buffer
let g:fzf_action = {
  \ 'ctrl-m': 'tabedit',
  \ 'ctrl-e': 'edit',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-s': 'split',
  \ 'ctrl-r': 'read',
\}

" }}}

" ----- Builtin Vim plugins ----- {{{
" When viewing directories, show nested tree mode
let g:netrw_liststyle=3
" Don't create .netrwhist files
let g:netrw_dirhistmax = 0
" }}}

" ----- NERDTree ----- {{{
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
" }}}

" ----- NERDCommenter ----- {{{
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
" }}}

" ----- MRU ----- {{{
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>
" }}}

" ----- vimwiki ----- {{{
let g:vimwiki_list = [{'path': '~/.wiki/'}]
" }}}
