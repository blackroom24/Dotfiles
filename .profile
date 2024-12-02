#!/bin/sh
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
export EDITOR="nvim"
export BROWSER="firefox"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export HISTFILE="$XDG_DATA_HOME/history"
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"