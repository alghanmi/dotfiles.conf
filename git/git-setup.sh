#!/bin/bash

##
## Git Setup
##

#User Info
git config --global user.name "$GIT_USERNAME"
git config --global user.email "$GIT_EMAIL"

#Editor & Diff
git config --global core.editor vi
git config --global merge.tool vimdiff

#Output color
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global color.ui auto

#Global gitignore
ln -s $SCRIPT_DIR/git/gitignore ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
