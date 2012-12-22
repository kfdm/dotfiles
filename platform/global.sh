#!/bin/bash

set -e

echo "Configuring Git"

# Basic User Stuff
git config --global user.name 'Paul Traylor'
git config --global github.user kfdm

# Alias
git config --global alias.cp cherry-pick
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.ru 'remote update --prune'
git config --global alias.pretty = 'log --pretty --graph --decorate'

# Colors!
git config --global color.ui true

#Misc
git config --global log.decorate 1
git config --global core.excludesfile ~/.gitignore
