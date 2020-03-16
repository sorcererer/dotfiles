###############################################
## author: sorcerer (github.com/sorcererer)  ##
## detail: main configuration file for `zsh' ##
###############################################

# Enable color support of ls
if [[ "$TERM" != "dumb" ]]; then
    if [[ -x `which dircolors 2> /dev/null` ]]; then
	eval `dircolors -b`
	alias 'ls=ls --color=auto'
    fi
fi

# ~/.config/zsh/dir-colors

# source external configuration files:
. /etc/profile &>/dev/null
for i in ${HOME}/.config/zsh/zsh-{options,exports,aliases,functions}; do
  . $i
done

# prompt line:

PROMPT="%n@%M: "

# auto-completion:
autoload -U compinit
compinit
