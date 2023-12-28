# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -Uz compinit # Initialize auto completion
compinit
setopt autocd
setopt globstarshort # Writing ** means **/*
setopt HIST_IGNORE_SPACE

bindkey -v # Vi keybindings

export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH=$PATH:~/.bin
# export LANG="sv_SE.UTF-8" Can't remember why I added this
export LC_ALL=en_US.UTF-8 # Use english as language
export CLICOLOR=1 # Color output of commands, used by e.g. ls
export LS_COLORS="${LS_COLORS:-""}" # Set to empty so that `fd` uses terminal colors
export LESS="--quit-if-one-screen --RAW-CONTROL-CHARS"
export EDITOR=hx
export POWERLEVEL9K_SHOW_RULER=false
export POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR=' '
export POWERLEVEL9K_MULTILINE_FIRST_PROMPT_SUFFIX=''
export POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_SUFFIX=''
export POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFFIX=''
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
export BAT_THEME=base16
[ -x $(command -v brew) ] && export HOMEBREW_PREFIX="${HOMEBREW_PREFIX:-$(brew --prefix)}"

alias ll="ls -la"
alias k=kubectl
alias kvalidate="kubeconform -strict -schema-location default -schema-location 'https://raw.githubusercontent.com/datreeio/CRDs-catalog/main/{{.Group}}/{{.ResourceKind}}_{{.ResourceAPIVersion}}.json'"

source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/opt/powerlevel10k/powerlevel10k.zsh-theme
if [ -x $(command -v kubectl) ]; then
  source <(kubectl completion zsh)
fi

source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^p' autosuggest-accept
bindkey '^n' autosuggest-execute

eval "$(direnv hook zsh)"
eval "$(zoxide init zsh)"
eval $(thefuck --alias)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
