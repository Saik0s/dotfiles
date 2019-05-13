scriptencoding utf-8

let g:cmdt_install = 'cd ruby/command-t/ext/command-t && rbenv exec ruby extconf.rb && make'
let g:ycm_install = './install.py' " --all'

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tokorom/clang_complete-getopts-ios'
Plug 'vim-scripts/cocoa.vim'
Plug 'keith/swift.vim'
Plug 'vim-syntastic/syntastic'
Plug 'skwp/vim-conque'
"Plug 'eraserhd/vim-ios'
Plug 'toyamarinyon/vim-swift',
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tomasr/molokai'
Plug 'vim-scripts/mru.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/rainbow_parentheses.vim'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jtratner/vim-flavored-markdown'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-sensible'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-xmark', { 'do': 'make' }
Plug 'vimwiki/vimwiki'
Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'vim-scripts/bash-support.vim'
"Plug 'wincent/command-t', { 'do': g:cmdt_install }
Plug 'rizzatti/dash.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-scripts/TagHighlight'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/vim-plug'
Plug 'sheerun/vim-polyglot'
call plug#end()

syntax enable
set background=dark
colorscheme molokai
color molokai

" For MacVim
set guifont=Hack:h24

function! s:plug_gx()
    let line = getline('.')
    let sha  = matchstr(line, '^  \X*\zs\x\{7,9}\ze ')
    let name = empty(sha) ? matchstr(line, '^[-x+] \zs[^:]\+\ze:')
                \ : getline(search('^- .*:$', 'bn'))[2:-2]
    let uri  = get(get(g:plugs, name, {}), 'uri', '')
    if uri !~ 'github.com'
        return
    endif
    let repo = matchstr(uri, '[^:/]*/'.name)
    let url  = empty(sha) ? 'https://github.com/'.repo
                \ : printf('https://github.com/%s/commit/%s', repo, sha)
    call netrw#BrowseX(url, 0)
endfunction

augroup PlugGx
    autocmd!
    autocmd FileType vim-plug nnoremap <buffer> <silent> gx :call <sid>plug_gx()<cr>
augroup END

function! s:plug_help_sink(line)
    let dir = g:plugs[a:line].dir
    for pat in ['doc/*.txt', 'README.md']
        let match = get(split(globpath(dir, pat), "\n"), 0, '')
        if len(match)
            execute 'tabedit' match
            return
        endif
    endfor
    tabnew
    execute 'Explore' dir
endfunction

command! PlugHelp call fzf#run(fzf#wrap({
            \ 'source': sort(keys(g:plugs)),
            \ 'sink':   function('s:plug_help_sink')}))
