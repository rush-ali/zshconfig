# ZSH global configuration file
# Original config by alerighi4@gmail.com
# Edited by matteoiervasi@gmail.com

export EDITOR=vim
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export LESS_ADVANCED_PREPROCESSOR=1
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'
export CLICOLOR=1
export PATH="/opt/local/bin:$PATH"
export LSCOLORS=GxFxCxDxBxegedabagaced

autoload -U colors && colors
autoload -Uz compinit && compinit
autoload -U promptinit && promptinit


# Auto-completion settings
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors $LSCOLORS
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
setopt completealiases
unsetopt nomatch


# History settings
HISTFILE=~/.bash_history
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_DUPS
setopt appendhistory autocd extendedglob notify


# Useful key bindings
bindkey -e
ttyctl -f
bindkey "^[[H"  beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[3~" delete-char


# Prompt settings (colors, etc.)
if [[ $UID -eq 0 ]]; then
   PROMPT="%{$fg_bold[red]%}%n@%m %{$fg_bold[blue]%}%1~ %{$reset_color%}%# "
else
   PROMPT="%{$fg_bold[green]%}%n@%m %{$fg_bold[blue]%}%1~ %{$reset_color%}$ "
fi
RPROMPT="%{$fg_bold[blue]%}[%{$fg_bold[yellow]%}%?%{$fg_bold[blue]%}]%{$reset_color%}"

# Some aliases
alias ll="ls -l"
alias grep="grep --color=always"
