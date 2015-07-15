#!/bin/bash
# Install Google code styles for IntelliJ

echo "Installing Google code styles..."

CODESTYLES_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )/codestyles"

for dir in $HOME/Library/Preferences/IntelliJIdea* \
           $HOME/.IntelliJIdea*/config
do
    if [ -d $dir ]; then
        mkdir -p $dir/codestyles
        cp -frv "$CODESTYLES_DIR"/* $dir/codestyles
    fi
done

echo "Done."
echo "Restart IntelliJ and go to Preferences, and apply 'Googlestyle' for code style."
