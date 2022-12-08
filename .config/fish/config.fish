if status is-interactive
    # Commands to run in interactive sessions can go here
end

# export EDITOR=nvim
set -gx PATH $PATH /bin $HOME/.krew/bin $HOME/go/bin /opt/homebrew/bin
set -gx EDITOR nvim

alias vi=nvim
export GOPATH=(go env GOPATH)
alias k8=/usr/local/bin/kubectl_1.8.15

# export GOPATH=/Users/ehui/go:/Users/ehui/go/src/github.com/muxinc/mux/bazel-bin/data/gopath:/Users/ehui/go/src/github.com/muxinc/mux/bazel-bin/video/gopath:/Users/ehui/go/src/github.com/muxinc/mux/bazel-bin/spaces/gopath


# export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

fzf_configure_bindings --directory=\ct
set -Ux LSCOLORS gxfxbEaEBxxEhEhBaDaCaD

export KUBECONFIG="/Users/ellenhui/.kube/config"
export REPO="/Users/ellenhui/go/src/github.com/muxinc/mux"
# export GOPACKAGESDRIVER=$REPO/tools/bazel/gopackagesdriver.sh
export LOCAL_REGISTRY="registry.localhost:5000"
export VAULT_ADDR="https://vault.staging.mux.io"
export NO_K8S_CHECK=1
export GPG_TTY=$(tty)


alias sdmlogin="sdm ready --gui -q || sdm login --email=ehui@mux.com"


# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/ehui/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/ehui/Downloads/google-cloud-sdk/path.fish.inc'; end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ellenhui/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/ellenhui/Downloads/google-cloud-sdk/path.fish.inc'; end

