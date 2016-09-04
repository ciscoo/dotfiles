export ZSH=/Users/cisco/.oh-my-zsh
export UPDATE_ZSH_DAYS=7

ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
DEFAULT_USER="$USER"
plugins=(git)

# User configuration
export JAVA_HOME=$(/usr/libexec/java_home)
export HOMEBREW_GITHUB_API_TOKEN=
export GROOVY_HOME=/usr/local/opt/groovy/libexec
source "$HOME/.sdkman/bin/sdkman-init.sh"
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Aliases
alias c="clear"
alias cdd="cd /Volumes/Data"
alias cdg="cd /Volumes/Data/github"
alias ..="cd .."
