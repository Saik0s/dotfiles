nnoremap g, za
nnoremap gV `[v`]
noremap <CR> :
noremap <M-Enter> <CR>
noremap <M-:> :
noremap S <nop>
" noremap ; :

nnoremap <Leader>l :call ToggleNumber()<CR>

" Make navigating long, wrapped lines behave like normal lines
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> gk k
noremap <silent> gj j
noremap <silent> 0 g0
noremap <silent> g0 0
noremap <silent> $ g$
noremap <silent> g$ $
noremap <silent> ^ g^
noremap <silent> g^ ^
noremap <silent> _ g_

" use 'Y' to yank to the end of a line, instead of the whole line
nnoremap <silent> Y y$

" take first suggested spelling as correct spelling and replace
nnoremap <silent> <Leader>z z=1<CR><CR>
nnoremap <silent> <Leader>zf V$%zf
nnoremap <silent> zT zMzvzczO

nnoremap <silent> <Leader>w :WV<CR>

nnoremap <silent> <Leader>v :Vte<CR>

nnoremap <silent> <Leader>c :echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<CR>

noremap <silent> <Leader>y "+y

nnoremap <silent> <Leader>= :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" noob tools: I've disabled these to prevent myself from getting into a bad
" habit.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" navigate splits by adding the Ctrl-modifier to the analogous vim motion
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <silent> <Leader>/ :nohlsearch<CR>
inoremap jk <ESC>
inoremap jj <ESC>
inoremap kk <ESC>

nmap H ^
vmap H ^
nmap L $
vmap L $

nmap <F8> :TagbarToggle<CR>
map <F7> :setlocal spell! spell?<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nnoremap <leader>ht :GitGutterLineHighlightsToggle<CR>
nnoremap <leader>r  :GitGutterUndoHunk<CR>
nnoremap <leader>s  :GitGutterStageHunk<CR>

" overrides these bindings from vanilla Vim
nnoremap gp :GitGutterPrevHunk<CR>
nnoremap gn :GitGutterNextHunk<CR>

" Open/close tagbar with \b
"nnoremap <silent> <leader>b :TagbarToggle<CR>
map <Leader>tt <esc>:TagbarToggle<cr>

map <Leader>s <esc>:ConqueTermSplit bash<cr>
nnoremap <C-P> :FZF<CR>
