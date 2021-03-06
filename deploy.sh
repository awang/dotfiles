#!/bin/bash

set -e

# Deploy each app config file.
for f in `ls . `
do
    if [[ $f == "README.md" ]] || [[ $f == "deploy.sh" ]] ; then
        continue
    fi

    if [ -d $f ]; then
        mkdir -p ~/.${f}
        cp -f -r ${f}/* ~/.${f}
    else
        cp -f $f ~/.${f}
    fi
done

# Setup vim.
mkdir -p ~/.vim/backup ~/.vim/tmp
if [ ! -d ~/.vim/bundle/vundle ]; then
    echo "Cloning vundle"
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
vim +BundleInstall +qall

# Set up git.
git config --global core.excludesfile ~/.gitignore
if [[ -n $1  &&  -n $2 ]] ; then
    git config --global user.name "$1"
    git config --global user.email "$2"
fi



