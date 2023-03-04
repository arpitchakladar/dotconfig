#
# ~/.bashrc
#

# If not running interactively, don"t do anything
[[ $- != *i* ]] && return

PS1="\[\e[36m\][\[\e[32m\]\u\[\e[36m\]@\[\e[34m\]\h \[\e[33m\]\w\[\e[36m\]]\$\[\e[0m\] "

export PATH="$HOME/.local/bin:$PATH"

# XDG Base Directory Specification
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state

alias sftp="python -m pyftpdlib -w"
alias ls="nnn -ed"
alias nnn="nnn -ed"

export EDITOR=nvim
export HISTSIZE=100

export NNN_FCOLORS="c1e28e2e006017f7c6d6abc4"
export NNN_OPTS="H"

# Paths
if [ ! -d $XDG_CACHE_HOME/bash ]; then
	mkdir -p $XDG_CACHE_HOME/bash;
fi
export HISTFILE=$XDG_CACHE_HOME/bash/history
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
if [ ! -d $XDG_CACHE_HOME/X11 ]; then
	mkdir -p $XDG_CACHE_HOME/X11;
fi
export XAUTHORITY=$XDG_CACHE_HOME/X11/Xauthority
export LESSHISTFILE=-
export PYTHONSTARTUP=$XDG_CONFIG_HOME/python/startup.py
export GOPATH=$XDG_DATA_HOME/go
export RUSTUP_HOME=$XDG_DATA_HOME/rust/rustup
export CARGO_HOME=$XDG_DATA_HOME/rust/cargo
export YARN_HOME=$XDG_DATA_HOME/yarn
export YARN_PREFIX=~/.local
