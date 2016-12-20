export ZSH=/Users/cisco/.oh-my-zsh
export UPDATE_ZSH_DAYS=7

ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
DEFAULT_USER="$USER"
plugins=(git)

# User configuration
export ANDROID_ADB=/Volumes/Data/android-sdk/platform-tools
export GOPATH=/Volumes/Data/go
export COMPOSER_PATH=/Users/cisco/.composer/vendor/bin
export JAVA_HOME=$(/usr/libexec/java_home)
export HOMEBREW_GITHUB_API_TOKEN=
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export PATH="$COMPOSER_PATH:$ANDROID_ADB:$PATH:"

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

export SDKMAN_DIR="/Users/cisco/.sdkman"
[[ -s "/Users/cisco/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/cisco/.sdkman/bin/sdkman-init.sh"
