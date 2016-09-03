#!/usr/bin/env bash
#
# Visual Studio Code
#
# Installs my perferred extensions.

set -e

# Check for code
if test ! $(which code); then
  echo "You must install the code command to path from vscode."
  exit
fi

EXTENSIONS=(
  robertohuertasm.vscode-icons
  donjayamanne.python
  lukehoban.Go
  ms-vscode.PowerShell
  ms-vscode.Theme-MaterialKit
  EditorConfig.EditorConfig
)

for ext in ${EXTENSIONS[@]}; do
  code --install-extension $ext
done

exit
