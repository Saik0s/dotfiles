alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"

if which mmake >/dev/null 2>&2; then
    alias make='mmake'
fi

if which exa >/dev/null 2>&1; then
    alias ls='exa'
    alias l='exa -la --git'
    alias la="exa -abghl --git"
    alias ll='exa -l --git'
fi

alias man="mand"
# alias reload=". $HOME/.zshrc"
alias reload="exec $SHELL"

alias killaudio='sudo killall -m -9 coreaudio'
alias atom=atom-beta
alias pip=pip2
alias cat=ccat
alias top="htop"
alias pbc='pbcopy'
alias pbp='pbpaste'
alias _='sudo'

alias diffu="diff --unified"
alias mkdir="${aliases[mkdir]:-mkdir} -p"
alias po='popd'
alias pu='pushd'
alias sa='alias | grep -i'
alias type='type -a'

alias topc='htop --sort-key=PERCENT_CPU'
alias topm='htop --sort-key=PERCENT_MEM'

# File Download
if (( $+commands[curl] )); then
  alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'
elif (( $+commands[wget] )); then
  alias get='wget --continue --progress=bar --timestamping'
fi

alias o='open'

# alias rmi='rm -i'

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
# alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
# alias z='fasd_cd -d'     # cd, same functionality as j in autojump
# alias zz='fasd_cd -d -i' # cd with interactive selection
# alias v='f -t -e vim'
alias f='fzf'

alias bs='brew search'
alias bi='brew install'

# alias l='k -Ah --si'
alias ks='k -Ah --si'
