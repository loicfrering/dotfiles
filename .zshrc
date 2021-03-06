# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

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
plugins=(git vagrant docker symfony2 nyan zsh-syntax-highlighting)

# Configure TERM with 256 colors before sourcing $ZSH/oh-my-zsh.sh
if [ $TERM != "screen-256color" ]; then
    export TERM=xterm-256color
fi

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Path
for d in /opt/*/bin(.N); do
    PATH="$PATH:$d"
done
export PATH=./bin:./node_modules/.bin:$HOME/.bin:$PATH

# keychain
# public keys must be loaded manually with keychain command
if [ -f ~/.keychain/$HOST-sh ]; then
    source ~/.keychain/$HOST-sh
fi

# prevent autocorrect
alias tmux="nocorrect tmux"

# general aliases
alias ll="ls -lh --color"
alias ack="ack-grep"

# tmux aliases
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tl="tmux list-sessions"

# git aliases - additions to oh-my-zsh's git plugin
alias gst="git st"
alias glg="git lola"
alias gf="git fetch"
alias gs="git show"

# vim as editor
export EDITOR=vim

# rbenv
if [ -d $HOME/.rbenv ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

# projects navigation
p(){cd ~/Projets/$1;}
compctl -W ~/Projets -M 'm:{a-z}={A-Z}' -/ p
