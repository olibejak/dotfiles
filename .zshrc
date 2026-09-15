# Created by oliwander for 5.9

# Set dir for zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/load zinit
source "${ZINIT_HOME}/zinit.zsh"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Init starship
eval "$(starship init zsh)"

# Vim motions
bindkey -v

alias ls='eza --icons=always --group-directories-first'
alias ll='eza -alh --icons=always --group-directories-first'

export TERM=xterm-256color

# Unity CLI
case ":${PATH}:" in *:"$HOME/.local/bin":*) ;; *) export PATH="$HOME/.local/bin:$PATH" ;; esac

# Nargo - Noir package manager
export NARGO_HOME="$HOME/.nargo"
export PATH="$PATH:$NARGO_HOME/bin"

# Barretenberg
export PATH="$HOME/.bb:$PATH"
