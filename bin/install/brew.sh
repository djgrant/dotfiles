#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --default-names
brew tap homebrew/services
brew install openssl
brew install yarn

# Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
# regular bash-completion package is held back to an older release, so we get latest from versions.
#   github.com/Homebrew/homebrew/blob/master/Library/Formula/bash-completion.rb#L3-L4
brew tap homebrew/versions
brew install homebrew/versions/bash-completion2

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

# run this script when this file changes guy.
brew install entr

# github util. imho better than hub
brew install gh

# mtr - ping & traceroute. best.
brew install mtr

# Useful binaries
brew install ack
brew install git
brew install git-extras
# brew install imagemagick --with-webp
brew install pv
brew install rename
brew install tree
# brew install zopfli
# brew install ffmpeg --with-libvpx
# brew install gifsicle

# Databases
brew install postgresql
# Caveats
# To have launchd start postgresql at login:
  ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
# Then to load postgresql now:
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

#brew install memcached
#brew install redis

# Service integrations
#brew install elasticsearch
#brew install heroku-toolbelt

# Dev tools
#brew install tidy-html5
# brew install android-platform-tools

# Shell
brew install terminal-notifier
brew install zsh
# brew install pidcat   # colored logcat guy

# Remove outdated versions from the cellar
brew cleanup
