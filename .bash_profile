# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Don't put duplicate lines in the history
export HISTCONTROL=ignoredups:ignorespace

# Append to the history file, don't overwrite it
shopt -s histappend

# Set history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=1000
export HISTFILESIZE=2000

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Node
export NODE_PATH=/usr/local/lib/node_modules

# Rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin"

# bash completion
[ -f `brew --prefix`/etc/bash_completion ] && source `brew --prefix`/etc/bash_completion

# colors
export CLICOLOR=1

# git bash completion
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=1

# prompt with git
export PS1='\[\e[0;35m\]\u@\h: \[\e[0;34m\]\w\[\e[0;32m\]$(__git_ps1):\[\e[m\] '

# editor
export EDITOR="s -w"

# Load Aliases
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
