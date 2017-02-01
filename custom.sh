# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install cmake
brew install --HEAD ccache

# Install rbenv
brew install rbenv ruby-build wget mongodb nodejs awscli
brew services start mongodb

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.path
source ~/.path

# Install rbenv plugins
mkdir -p "$(rbenv root)/plugins"
git clone https://github.com/rkh/rbenv-update.git "$(rbenv root)/plugins/rbenv-update"
git clone https://github.com/rbenv/rbenv-default-gems.git $(rbenv root)/plugins/rbenv-default-gems
git clone https://github.com/nicknovitski/rbenv-gem-update ~/.rbenv/plugins/rbenv-gem-update
git clone https://github.com/yyuu/rbenv-ccache.git ~/.rbenv/plugins/rbenv-ccache
git clone git://github.com/tpope/rbenv-aliases.git \
  "$(rbenv root)/plugins/rbenv-aliases"
rbenv alias --auto
git clone https://github.com/ianheggie/rbenv-env.git "$(rbenv root)/plugins/rbenv-env"

# Install Ruby
rbenv install 2.4.0
rbenv global 2.4.0
ruby -v

git config --global color.ui true
git config --global user.name "Joey Burzynski"
git config --global user.email "joey@marketkarma.com"
