# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="miloshadzic"

bindkey -v

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(tmux tmuxinator git ruby rails docker vagrant subl node npm meteor github zsh-syntax-highlighting vi-mode vim-interaction web-search bower brew)


source $ZSH/oh-my-zsh.sh

PATH=$PATH:/usr/local/sbin

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH=$PATH:"/usr/local/heroku/bin:$PATH"
export EDITOR=vim
export KEYTIMEOUT=1

# Docker
export DOCKER_HOST='tcp://127.0.0.1:2375'

function zle-keymap-select zle-line-init zle-line-finish {
  case $KEYMAP in
    viins|main) print -n -- "\E]50;CursorShape=0\C-G";; # block cursor
    vicmd) print -n -- "\E]50;CursorShape=1\C-G";; # line cursor
  esac

  zle reset-prompt
  zle -R
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

source $(brew --prefix nvm)/nvm.sh

# added by travis gem
[ -f /Users/samuelmolinari/.travis/travis.sh ] && source /Users/samuelmolinari/.travis/travis.sh
