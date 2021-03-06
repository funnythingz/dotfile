# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias  tmux="TERM=screen-256color-bce tmux"
alias  pgitadd="git status -s | sed -e '/^[^ |\?]/d' | peco --prompt='[git add]' | awk '{print \$2}' | xargs git add"

export PATH="/usr/local/heroku/bin:$PATH"

export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/funnythingz/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval   "$(pyenv init -)"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"

export PATH="/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/sbin:/bin:$PATH"

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"

export PATH="$HOME/.rbenv/shims:$PATH"
eval   "$(rbenv init -)"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/go_appengine:$PATH"

export PATH="$HOME/.nodenv/shims:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
