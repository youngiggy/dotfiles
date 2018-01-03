#-------------------------------------------------------------------------------
# Taps
#-------------------------------------------------------------------------------

tap 'caskroom/cask'
tap 'caskroom/fonts'
tap 'caskroom/versions'
tap 'homebrew/dupes'
tap 'homebrew/php'
tap 'homebrew/services'
tap 'homebrew/versions'

#-------------------------------------------------------------------------------
# Make sure apps get installed in system Applications dir
#-------------------------------------------------------------------------------

cask_args appdir: '/Applications'

#-------------------------------------------------------------------------------
# Install ZSH
#-------------------------------------------------------------------------------

brew 'zsh'
brew 'zsh-completions'

#-------------------------------------------------------------------------------
# Install GNU core utilities (those that come with OS X are outdated)
#-------------------------------------------------------------------------------

brew 'coreutils'

#-------------------------------------------------------------------------------
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
#-------------------------------------------------------------------------------

brew 'findutils'

#-------------------------------------------------------------------------------
# Install Bash 4
#-------------------------------------------------------------------------------

brew 'bash'

#-------------------------------------------------------------------------------
# Install more recent versions of some OS X tools
#-------------------------------------------------------------------------------

brew 'homebrew/dupes/grep'

#-------------------------------------------------------------------------------
# Install Binaries
#-------------------------------------------------------------------------------

brew 'aws-elasticbeanstalk'
brew 'git'
brew 'git-flow'
brew 'htop'
brew 'node', args: ['with-npm']
brew 'openssl'
brew 'tcpdump'
brew 'tree'
brew 'wget'

#-------------------------------------------------------------------------------
# Development-PHP
# @see $ brew info php71, which reads...
# With the release of macOS Sierra the Apache module is now not built by default.
# If you want to build it on your system you have to install php with the
# --with-httpd24 option. See  brew options php71  for more details.
#-------------------------------------------------------------------------------

brew 'php70' #, args: ['without-apache']
brew 'php70-intl'
brew 'php70-redis'
brew 'php70-xdebug'
brew 'composer'
brew 'phpunit'
brew 'php-cs-fixer'

#-------------------------------------------------------------------------------
# Apps
#-------------------------------------------------------------------------------

cask 'docker'
cask 'firefox'
cask 'google-chrome'
cask 'google-drive'
cask 'intellij-idea'
cask 'iterm2'
cask 'rdm'
cask 'sequel-pro'
cask 'sublime-text'

#-------------------------------------------------------------------------------
# Fonts
#-------------------------------------------------------------------------------

cask 'font-source-code-pro'
