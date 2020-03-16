###############################################
## author: sorcerer (github.com/sorcerer)    ##
## detail: main configuration file for `zsh' ##
###############################################

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
