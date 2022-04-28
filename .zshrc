# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX=true
# Path to your oh-my-zsh installation.
export ZSH="/home/${USER}/.oh-my-zsh"



# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="pygmalion"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf kubectl)

source $ZSH/oh-my-zsh.sh

setopt share_history

export EDITOR='nvim'
export VISUAL='nvim'

alias vim='/usr/bin/nvim'

export PATH="/home/${USER}/.krew/bin:/usr/local/go/bin:/home/$USER/go/bin/:$PATH:/home/$USER/bin:/home/${USER}/.cargo/bin:$GOPATH:/home/${USER}/.yarn/bin"
export GOPATH="/home/${USER}/go:/home/${USER}/go/src/github.com/muxinc/mux/bazel-bin/data/gopath:/home/${USER}/go/src/github.com/muxinc/mux/bazel-bin/video/gopath:/home/${USER}/go/src/github.com/muxinc/mux/bazel-bin/spaces/gopath"


## junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


## mux stuff
export MUXDIR="/home/${USER}/go/src/github.com/muxinc/mux"
export REPO="/home/${USER}/go/src/github.com/muxinc/mux"
export KUBECONFIG="/home/${USER}/.kube/config"
export GOPACKAGESDRIVER=$REPO/tools/bazel/gopackagesdriver.sh
export LOCAL_REGISTRY="registry.localhost:5000"
export VAULT_ADDR="https://vault.staging.mux.io"

# fifty million kubectls
alias cdm="cd /home/${USER}/go/src/github.com/muxinc/mux"
alias kubectl=kubectl1.23
alias k8=kubectl1.8
alias k12=kubectl1.12
alias k13=kubectl1.13
alias k17=kubectl1.17
alias k19=kubectl1.19
alias k23=kubectl1.23

alias fixsdm='sdm disconnect --all;sdm connect --all;sdm disconnect --all'
alias sdmlogin="sdm ready --gui -q || sdm login --email=ehui@mux.com"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

