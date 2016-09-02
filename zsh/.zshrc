# Path to your oh-my-zsh installation.
export ZSH=/Users/cisco/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# How often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

# User configuration
export COMPOSER_PATH=~/.composer/vendor/bin
export GOPATH="$HOME/Documents/GoWorkspace/"
export GOROOT=/usr/local/opt/go/libexec
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$COMPOSER_PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export HOMEBREW_GITHUB_API_TOKEN=
export GROOVY_HOME=/usr/local/opt/groovy/libexec
DEFAULT_USER="cisco"
source "$HOME/.sdkman/bin/sdkman-init.sh"
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Aliases
alias c="clear"
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias cstart="/usr/local/Cellar/tomcat/8.0.32/bin/catalina start"
alias cstop="/usr/local/Cellar/tomcat/8.0.32/bin/catalina stop"
export PATH="/usr/local/sbin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
