#!/bin/sh

#-------------------------------------------------------------------------------
# Thanks Maxime Fabre! https://speakerdeck.com/anahkiasen/a-storm-homebrewin
# Thanks Mathias Bynens! https://mths.be/osx
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Set temporary variable
#-------------------------------------------------------------------------------

CODE_DIR=$HOME/mesh
GIT_USER_NAME="youngiggy"
GIT_EMAIL="youngik.joo@meshkorea.net"
DOTFILES=$HOME/dotfiles

#-------------------------------------------------------------------------------
# Check for Homebrew and install if we don't have it
#-------------------------------------------------------------------------------

if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#-------------------------------------------------------------------------------
# Update Homebrew recipes
#-------------------------------------------------------------------------------

brew update

#-------------------------------------------------------------------------------
# Install all our dependencies with bundle (See Brewfile)
#-------------------------------------------------------------------------------

brew tap homebrew/bundle
brew bundle --file=$DOTFILES/Brewfile # Install binary & applications
brew cleanup
brew cask cleanup

#-------------------------------------------------------------------------------
# Install global Git configuration
#-------------------------------------------------------------------------------

ln -nfs $DOTFILES/.gitconfig $HOME/.gitconfig
git config --global core.excludesfile $DOTFILES/.gitignore_global
git config --global user.name "${GIT_USER_NAME}"
git config --global user.email "${GIT_EMAIL}"

#-------------------------------------------------------------------------------
# Make ZSH the default shell environment
#-------------------------------------------------------------------------------

chsh -s $(which zsh)

#-------------------------------------------------------------------------------
# Install Oh-my-zsh
#-------------------------------------------------------------------------------

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install cobalt2 theme
# wget https://raw.githubusercontent.com/wesbos/Cobalt2-iterm/master/cobalt2.zsh-theme -O $HOME/.oh-my-zsh/themes/cobalt2.zsh-theme

# Install Powerline theme
#wget https://raw.githubusercontent.com/jeremyFreeAgent/oh-my-zsh-powerline-theme/master/powerline.zsh-theme -O $HOME/.oh-my-zsh/themes/powerline.zsh-theme
#git clone git@github.com:powerline/fonts.git && bash fonts/install.sh
#sleep 3
#rm -rf fonts

#-------------------------------------------------------------------------------
# Install & execute profile
#-------------------------------------------------------------------------------

ln -nfs $DOTFILES/.zshrc $HOME/.zshrc

#-------------------------------------------------------------------------------
# Install .vimrc
#-------------------------------------------------------------------------------

ln -nfs $DOTFILES/.vimrc $HOME/.vimrc

#-------------------------------------------------------------------------------
# Install .nanorc
#-------------------------------------------------------------------------------

#ln -nfs $DOTFILES/.nanorc $HOME/.nanorc

#-------------------------------------------------------------------------------
# Install Composer
#-------------------------------------------------------------------------------

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

#-------------------------------------------------------------------------------
# Install global Composer packages
#-------------------------------------------------------------------------------

/usr/local/bin/composer global require laravel/installer

#-------------------------------------------------------------------------------
# Install global Node packages
#-------------------------------------------------------------------------------

npm install http-server yarn --global --save

#-------------------------------------------------------------------------------
# Source profile
#-------------------------------------------------------------------------------

source $HOME/.zshrc
