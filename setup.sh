#!/bin/bash

# Install packages
sudo apt-get install \
  account-plugin-irc \
  ack-grep \
  ack-grep \
  autoconf \
  autojump \
  automake \
  bison \
  build-essential \
  compizconfig-settings-manager\
  curl \
  exuberant-ctags \
  git-cola \
  git-core \
  gparted \
  ia32-libs-gtk \
  ia32-libs-gtk \
  icedtea-6-plugin \
  icedtea-7-plugin \
  libc6-dev \
  libcurl3-dev\
  libgdk-pixbuf2.0-0 \
  libgtk2.0-0 \
  libgdbm-dev \
  libffi-dev \
  libopenssl-ruby \
  libpq-dev \
  libqt4-dev \
  libreadline6 \
  libreadline6-dev\
  libsqlite3-dev \
  libsqlite4-0 \
  libssl0.9.8 \
  libssl-dev \
  libtool \
  libxml2-dev \
  libxslt-dev \
  libyaml-dev \
  ncurses-dev \
  ncurses-term \
  nginx \
  nodejs \
  openjdk-7-jdk \
  openssl \
  postgresql \
  postgresql-client \
  qt4-qmake \
  rake \
  ruby-dev \
  rubygems \
  screen \
  sqlite3 \
  vim-gnome\
  virtualbox \
  zlib1g \
  zlib1g-dev \
  && \

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
  mkdir ~/projects && cd ~/projects && rvm use 1.9.3 &&
  gem install heroku bundler --no-ri --no-rdoc && heroku keys:add && \
  git clone -o heroku git@heroku.com:splitsee3.git && \
  rvm gemset create splitsee3 && cd splitsee3 && gem install bundler && \
  bundle && rake db:migrate && \
  rake db:test:prepare
  

