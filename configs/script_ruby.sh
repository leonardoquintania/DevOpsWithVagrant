#!/bin/bash
echo 'install dependencias'
sudo apt-get -y install build-essential
sudo apt-get -y install libssl-dev libreadline-dev zlib1g-dev
echo 'git rbenv/bin'
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
echo 'git plugins/ruby-build'
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashr
echo 'rbenv install'
rbenv install 2.5.1
rbenv global 2.5.1