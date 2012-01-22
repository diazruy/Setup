#!/bin/bash

# Install packages
sudo apt-get install build-essential gnome-do \
  git-core git-cola ruby-dev rubygems rake curl vim-gnome \
  exuberant-ctags screen libopenssl-ruby \
  bison openssl libreadline6 libreadline6-dev  \
  zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 \
  libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf \
  postgresql postgresql-client libpq-dev \
  libc6-dev ncurses-dev ncurses-term nodejs libqt4-dev qt4-qmake && \
  # Chrome
  sudo dpkg -i < <(curl https://dl-ssl.google.com/linux/direct/google-chrome-stable_current_i386.deb) && \
  # RVM
  bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer ) && \
  echo "Finish RVM installation (add if and source rvm in shells in .bashrc)" && \
  read -p "Press any key to continue" && \
  echo '[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm" # Load RVM function' >> ~/.bashrc && \
  vim ~/.bashrc && \
  source ~/.bashrc && \
  rvm install 1.9.3 && \
  # SSH
  ssh-keygen -t rsa -C "diazruy@gmail.com" && \
  cat ~/.ssh/id_rsa.pub && echo "Intall SSH Key in github" && \
  read -p "Press any key to continue" && \
  google-chrome http://github.com/diazruy && \
  # Vim
  git clone git@github.com:diazruy/dotvim.git ~/.vim && \
  ln -s ~/.vim/vimrc ~/.vimrc && \
  cd ~/.vim && \
  git submodule init && git submodule update && \
  cd bundle/command-t && rvm use system && rake make && \
  read -p "Add 'export TERM=xterm-256color' to .bashrc" && \
  # Splitsee
  mkdir ~/projects && cd ~/projects && rvm use 1.9.2 &&
  gem install heroku bundler --no-ri --no-rdoc && heroku keys:add && \
  git clone -o heroku git@heroku.com:splitsee.git && \
  rvm gemset create splitsee && cd splitsee && gem install bundler && \
  bundle && rake db:migrate && \
  rake db:test:prepare
  

