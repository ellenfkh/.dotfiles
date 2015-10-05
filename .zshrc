alias ls="ls --color"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

setopt nobeep

export PATH=~/.cabal/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$PATH:$HADOOP_HOME/bin

autoload -Uz compinit
compinit
zstyle ':completion:*' list-colors 'exfxcxdxbxegedabagacad'

source ~/.zsh/zsh-git-prompt/zshrc.sh

GIT_PROMPT_EXECUTABLE="haskell"

fg_red="$(print '%{\e[1;31m%}')"
fg_green="$(print '%{\e[1;32m%}')"
fg_normal="$(print '%{\e[0m%}')"

PROMPT='(%!) %(!.${fg_red}.${fg_green})%n${fg_normal}@%B%m%b [%3c]$(git_super_status) %# '

#source /clinic/2014/sandia14/sandia14-env-variables.sh

HISTSIZE=1000
HISTFILESIZE=2000

export VISUAL=vim
export EDITOR="$VISUAL"
