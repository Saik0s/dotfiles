export ZGEN_RESET_ON_CHANGE=($HOME/.zsh/zgen-setup.zsh)
source $HOME/.zgen/zgen.zsh

function load-plugin-list() {
    echo "creating a zgen save"

    ZSH_THEME=refined
    #ZGEN_LOADED=()
    #ZGEN_COMPLETIONS=()

    zgen prezto

    #zgen prezto archive
    zgen prezto autosuggestions
    zgen prezto command-not-found
    zgen prezto completion
    zgen prezto directory
    zgen prezto dnf
    #zgen prezto docker
    zgen prezto dpkg
    zgen prezto editor
    #zgen prezto emacs
    zgen prezto environment
    zgen prezto fasd
    zgen prezto git
    zgen prezto gnu-utility
    #zgen prezto gpg
    #zgen prezto haskell
    zgen prezto helper
    zgen prezto history-substring-search
    zgen prezto history
    zgen prezto homebrew
    #zgen prezto macports
    #zgen prezto node
    #zgen prezto ocaml
    zgen prezto osx
    #zgen prezto pacman
    #zgen prezto perl
    #zgen prezto prompt
    zgen prezto python
    #zgen prezto rails
    zgen prezto rsync
    zgen prezto ruby
    #zgen prezto screen
    zgen prezto spectrum
    zgen prezto ssh
    zgen prezto syntax-highlighting
    zgen prezto terminal
    #zgen prezto tmux
    zgen prezto utility
    zgen prezto wakeonlan
    #zgen prezto yum

    zstyle ':prezto:module:history-substring-search' case-sensitive 'yes'

    #prompt -p pure

    zgen oh-my-zsh

    # If zsh-syntax-highlighting is bundled after zsh-history-substring-search,
    # they break, so get the order right.
    #zgen load zsh-users/zsh-syntax-highlighting
    #zgen load zsh-users/zsh-history-substring-search

    #zgen load iam4x/zsh-iterm-touchbar

    zgen load wbinglee/zsh-wakatime

    #zgen load joepvd/zsh-hints

    # OS X helpers. This plugin is smart enough to detect when it isn't running
    # on OS X and not load itself, so you can safely share the same plugin list
    # across OS X and Linux/BSD
    #zgen load unixorn/tumult.plugin.zsh

    # Add my collection of git helper scripts
    #zgen load unixorn/git-extra-commands

    # Adds aliases to open your current repo & branch on github.
    #zgen load peterhurford/git-it-on.zsh

    # Load some oh-my-zsh plugins
    #zgen oh-my-zsh plugins/colorize
    #zgen oh-my-zsh plugins/common-aliases
    #zgen oh-my-zsh plugins/compleat
    zgen oh-my-zsh plugins/fasd
    #zgen oh-my-zsh plugins/forklift
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/git-extras
    #zgen oh-my-zsh plugins/git-flow
    #zgen oh-my-zsh plugins/git-hubflow
    #zgen oh-my-zsh plugins/git-prompt
    #zgen oh-my-zsh plugins/gitfast
    #zgen oh-my-zsh plugins/github
    #zgen oh-my-zsh plugins/gitignore
    #zgen oh-my-zsh plugins/globalias
    #zgen oh-my-zsh plugins/gnu-utils
    #zgen oh-my-zsh plugins/history
    #zgen oh-my-zsh plugins/history-substring-search
    #zgen oh-my-zsh plugins/iterm2
    #zgen oh-my-zsh plugins/last-working-dir
    #zgen oh-my-zsh plugins/osx
    #zgen oh-my-zsh plugins/pip
    #zgen oh-my-zsh plugins/python
    #zgen oh-my-zsh plugins/rsync
    #zgen oh-my-zsh plugins/safe-paste
    #zgen oh-my-zsh plugins/swiftpm
    #zgen oh-my-zsh plugins/thefuck
    zgen oh-my-zsh plugins/themes
    zgen oh-my-zsh plugins/vi-mode
    #zgen oh-my-zsh plugins/web-search
    #zgen oh-my-zsh plugins/xcode
    #zgen oh-my-zsh plugins/zsh-navigation-tools
    #zgen oh-my-zsh plugins/zsh_reload

    theme refined

    # A set of shell functions to make it easy to install small apps and
    # utilities distributed with pip.
    #zgen load sharat87/pip-app

    #zgen load chrissicool/zsh-256color

    # Load more completion files for zsh from the zsh-lovers github repo
    #zgen load zsh-users/zsh-completions src

    # Very cool plugin that generates zsh completion functions for commands
    # if they have getopt-style help text. It doesn't generate them on the fly,
    # you'll have to explicitly generate a completion, but it's still quite cool.
    #zgen load RobSis/zsh-completion-generator

    # Load me last
    #GENCOMPL_FPATH=$HOME/.zsh/complete

    # Add Fish-like autosuggestions to your ZSH
    #zgen load zsh-users/zsh-autosuggestions

    # Save it all to init script
    zgen save
}

#bindkey "^[[A" history-substring-search-up
#bindkey "^[[B" history-substring-search-down

if ! zgen saved; then
    load-plugin-list
fi
