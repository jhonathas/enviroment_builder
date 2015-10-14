#!/bin/sh

#while true; do
	#echo 'You have installed and configured Dropbox? \n(Y or N)?'
    #read -p '' yn
    #case $yn in
        #[Yy]* ) echo '\nStart OSX configuration!'; break;;
        #[Nn]* ) echo 'Please install and configure Dropbox!'; exit;;
        #* ) echo "Please answer yes or no.";;
    #esac
#done

echo "Installing Command Line Tools \n"

xcode-select --install

echo "\nDone!\n"


echo "Installing Homebrew, Bundle and Apps on Brewfile\n"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Homebrew/bundle

brew bundle

echo "\nDone!\n"
