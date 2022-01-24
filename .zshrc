# Lines configured by zsh-newuser-install 
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

PROMPT="%~ %F{cyan}>>>%f "

path+=('/home/jordan/.local/bin')
export EDITOR=nvim
zstyle :compinstall filename '/home/jordan/.zshrc'

alias cat="bat"
alias vim="nvim"
alias python="python3"
alias virtual='source /home/jordan/Documents/python-virtual/env/bin/activate'

hash -d d=~/.config
autoload -Uz compinit
compinit

if [ -e /usr/bin/pfetch ]; then
	pfetch
fi
# End of lines added by compinstall

# Created by `pipx` on 2022-01-05 06:30:24
export PATH="$PATH:/home/jordan/.local/bin"
