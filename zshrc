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

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -v # Vi keybindings

export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH=$PATH:~/.bin
# export LANG="sv_SE.UTF-8" Can't remember why I added this
export LC_ALL=en_US.UTF-8 # Use english as language
export CLICOLOR=1 # Color output of commands, used by e.g. ls
export LESS="-F $LESS"
export EDITOR=nvim

alias ll="ls -la"

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
