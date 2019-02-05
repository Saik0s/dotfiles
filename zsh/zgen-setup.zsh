export ZGEN_RESET_ON_CHANGE=($HOME/.zsh/zgen-setup.zsh)
source $HOME/.zgen/zgen.zsh

function load-plugin-list() {
    echo "creating a zgen save"

    zgen oh-my-zsh

    zgen load wbinglee/zsh-wakatime

    # Load some oh-my-zsh plugins
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/compleat
    zgen oh-my-zsh plugins/fasd
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/git-flow
    zgen oh-my-zsh plugins/git-hubflow
    zgen oh-my-zsh plugins/git-prompt
    zgen oh-my-zsh plugins/gitfast
    zgen oh-my-zsh plugins/github
    zgen oh-my-zsh plugins/gitignore
    zgen oh-my-zsh plugins/globalias
    zgen oh-my-zsh plugins/gnu-utils
    zgen oh-my-zsh plugins/history
    zgen oh-my-zsh plugins/history-substring-search
    zgen oh-my-zsh plugins/iterm2
    zgen oh-my-zsh plugins/last-working-dir
    zgen oh-my-zsh plugins/osx
    zgen oh-my-zsh plugins/rsync
    zgen oh-my-zsh plugins/safe-paste
    zgen oh-my-zsh plugins/swiftpm
    zgen oh-my-zsh plugins/thefuck
    zgen oh-my-zsh plugins/themes
    zgen oh-my-zsh plugins/vi-mode
    zgen oh-my-zsh plugins/xcode
    # zgen oh-my-zsh plugins/zsh-syntax-highlighting

    # Load more completion files for zsh from the zsh-lovers github repo
    zgen load zsh-users/zsh-completions src

    # Add Fish-like autosuggestions to your ZSH
    zgen load zsh-users/zsh-autosuggestions

    zgen load zsh-users/zsh-syntax-highlighting

    zgen oh-my-zsh themes/refined

    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down

    # Save it all to init script
    zgen save
}

if ! zgen saved; then
    load-plugin-list
fi
