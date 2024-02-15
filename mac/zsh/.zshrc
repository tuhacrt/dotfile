if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins.zsh

[[ -f ${zsh_plugins:r}.txt ]] || touch ${zsh_plugins:r}.txt

fpath+=(${ZDOTDIR:-~}/.antidote)
autoload -Uz $fpath[-1]/antidote

if [[ ! $zsh_plugins -nt ${zsh_plugins:r}.txt ]]; then
  (antidote bundle <${zsh_plugins:r}.txt >|$zsh_plugins)
fi

source $zsh_plugins

# fzf
# $(brew --prefix)/opt/fzf/install

alias vi="nvim"
alias vim="nvim"
alias gf="git fetch"
alias gb="git branch"
alias gp="git pull"
alias gl="git log --pretty=oneline"
alias gs="git status"
alias gc="git checkout"
alias ls="exa -a -l"
alias l="exa"
alias cat="bat"
alias c="clear"
alias b="brew update && brew upgrade && brew cleanup"

# ghcup=env
[[ -f "$HOME/.ghcup/env" ]] && source "$HOME/.ghcup/env"

# bun completions
[[ -s "$HOME/.bun/_bun" ]] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# zoxide
eval "$(zoxide init zsh --cmd z)"

# fnm
eval "$(fnm env --use-on-cd)"

