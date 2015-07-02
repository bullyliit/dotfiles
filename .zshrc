# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1500
SAVEHIST=1500
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/myxanthrope/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# This config is acompilation of dot files  from all over the net
# Will find time to make 'em neat and readable

# Enable shell coloring
autoload -U colors && colors

# Prompt colors
PROMPT="%{$fg[green]%} >> "
RPROMPT="%{$fg[white]%}"

# Display colorful results for 'ls' and 'grep'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Some more aliases
alias sv='sudo vim'
alias vol='alsamixer'
alias s='sudo'
