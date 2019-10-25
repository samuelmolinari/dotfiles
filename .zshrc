# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nebirhos"

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
plugins=(tmux tmuxinator git ruby rails docker vagrant subl node npm meteor github zsh-syntax-highlighting vi-mode vim-interaction web-search bower brew jsontools)

source $ZSH/oh-my-zsh.sh

PATH=$PATH:/usr/local/sbin

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH=$PATH:"/usr/local/heroku/bin:$PATH"
export EDITOR=vim
export KEYTIMEOUT=1
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

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

#source $(brew --prefix nvm)/nvm.sh

# added by travis gem
[ -f /Users/samuelmolinari/.travis/travis.sh ] && source /Users/samuelmolinari/.travis/travis.sh

alias weather='curl wttr.in/London'
alias be='bundle exec'
alias dce='docker-compose exec'
alias vim='nvim'
export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"
export PATH="/usr/local/opt/kibana@4.4/bin:$PATH"
export PATH="/usr/local/bin/VBoxManage:$PATH"
. $(brew --prefix)/etc/profile.d/z.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/anaconda3/bin:$PATH"
export PATH="/usr/local/Cellar/universal-ctags/HEAD-07796ea/bin/ctags:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/Users/samuelmolinari/Downloads/jormungandr-v0.2.2-x86_64-apple-darwin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
