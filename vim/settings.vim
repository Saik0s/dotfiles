scriptencoding utf-8

"set nocompatible
"set rtp+=/usr/local/opt/fzf

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

set hidden

syntax on

let mapLeader = ' '
let maplocalLeader = ' '
let g:mapLeader = ' '
map <Space> <Leader>

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list
"set listchars=tab:\ \ \ \ ,trail:·

set wrap       "Wrap lines
set linebreak    "Wrap lines at convenient points

set clipboard=unnamed,unnamedplus
set modelines=1
set cursorline        " highlight current line
set lazyredraw
set showmatch           " higlight matching parenthesis
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
set foldlevelstart=10   " start with fold level of 1
set relativenumber
set ruler              " show the cursor position all the time
if exists('&inccommand')
  set inccommand=split " like incsearch, but do it for commands (like :s)
endif
set splitright         " Vertical   splits  use  right  half  of screen
set splitbelow         " Horizontal splits  use  bottom half  of screen
set timeoutlen=300    " Lower ^[ timeout
set colorcolumn=+0     " show a column whenever textwidth is set
set laststatus=2 " Always show the status line
set smartcase

" ================ Completion =======================

set wildmode=full
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=1         "Start scrolling when we're 1 lines away from margins
set sidescrolloff=15
set sidescroll=1

"" ----- Terminal-as-GUI settings --------------------------------------------

"" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

"" Switch syntax highlighting on, when the terminal has colors
"" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has('gui_running')
syntax on
set hlsearch
endif

if exists('+termguicolors')
  " This lets us use 24-bit "true" colors in the terminal
  set termguicolors
endif

"" NeoVim and iTerm2 have support to display different cursor shapes than just
"" the standard white block.
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175

"" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
"" }}}

augroup vimrc
  " Clear the current autocmd group, in case we're re-sourcing the file
  au!

  " Jump to the last known cursor position when opening a file.
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

augroup END

