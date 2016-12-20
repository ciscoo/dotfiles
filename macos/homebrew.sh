#!/usr/bin/env bash
#
# Homebrew
#
# Installs my perferred Homebrew packages.

set -e

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd "$(dirname "$0")"

TAPS=(
  homebrew/binary
  homebrew/dupes
  homebrew/versions
  caskroom/cask
  caskroom/versions
  caskroom/fonts
)

FORMULAS=(
  composer
  git
  go
  gradle
  groovy
  optipng
  mcrypt
  mysql
  node
  openssl
  php71
  php71-mcrypt
  python3
  screenfetch
  sqlite
  wget
  zsh
)

FONTS=(
  font-source-code-pro
  font-sauce-code-powerline
  font-roboto
)

CASKS=(
  adobe-creative-cloud
  alfred
  filezilla
  flux
  google-chrome
  google-drive
  intellij-idea
  iterm2
  java
  kdiff3
  keka
  postbox
  sequel-pro
  slack
  sourcetree
  spectacle
  sqlitebrowser
  visual-studio-code
  vlc
)

for tap in ${TAPS[@]}; do
    brew tap $tap
done

brew update

brew install ${FORMULAS[@]}
brew cask install ${CASKS[@]}
brew cask install ${FONTS[@]}

brew cleanup
brew cask cleanup

exit
