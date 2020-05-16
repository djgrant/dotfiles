# Homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# NPM
# brew install nvm
# nvm install stable # This installs `npm` too using the recommended installation method
# nvm alias default stable

# # Ruby
# brew install rbenv ruby-build
# rbenv install $(rbenv install -l | grep -v - | tail -1)

echo “If this was the first time installing npm and rbenv, restart terminal and run the script again“
read -n 1

# Install all the things
./brew.sh
./brew-cask.sh
./npm.sh
./gem.sh

#############################
sudo chown -R $(whoami) /usr/local/var/homebrew

# Set safe permissions on bin
chmod go-w ~/bin

# for the c alias (syntax highlighted cat)
sudo easy_install Pygments

# github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)


# github.com/rupa/z   - oh how i love you
git clone https://github.com/rupa/z.git ./z
chmod +x ./z/z.sh
# consider reusing your current .z file if possible. it's painful to rebuild :)
# z hooked up in .bash_profile

# git autocomplete
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash ## doesn't seem to work anymore

# this has autocompletion though
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

./x-code.sh

# speed up git status
git config status.showuntrackedfiles no
git update-index --untracked-cache

# set screenshot location
defaults write com.apple.screencapture location ~/Dropbox/Screenshots
