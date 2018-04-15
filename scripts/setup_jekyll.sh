# Set up homebrew if not installed
if hash brew 2>/dev/null; then
    echo "Homebrew is already installed. Continuing..."
else
    echo "Homebrew is not installed. Installing..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# Set up rbenv (custom Ruby versions)
echo "Installing 'rbenv'..."
brew install rbenv
echo "Initializing 'rbenv'..."
rbenv init
# Set up bash_profile to initialize rbenv
LINE='eval "$(rbenv init -)"'
FILE=~/.bash_profile
touch "$FILE"
grep -q -F "$LINE" $FILE || printf "# rbenv (RUBY)\n$LINE" >> $FILE
source ~/.bash_profile
# Install Bundler and the required Gems
echo "Installing Bundler and required Gems..."
gem install bundler
bundle install
