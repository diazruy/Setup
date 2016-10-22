#!/bin/bash

# Install packages
sudo apt-get install \
  ack-grep \
  autoconf \
  autojump \
  automake \
  bison \
  build-essential \
  curl \
  exuberant-ctags \
  git-cola \
  git-core \
  gnome-tweak-tool \
  gparted \
  icedtea-8-plugin \
  indicator-multiload \
  libc6-dev \
  libcurl3-dev\
  libgdk-pixbuf2.0-0 \
  libgtk2.0-0 \
  libgdbm-dev \
  libffi-dev \
  libpq-dev \
  libqt4-dev \
  libqtwebkit-dev \
  libreadline6 \
  libreadline6-dev\
  libsqlite3-dev \
  libssl-dev \
  libtool \
  libxml2-dev \
  libxslt-dev \
  libyaml-dev \
  memcached \
  ncurses-dev \
  ncurses-term \
  nginx \
  nodejs \
  openjdk-9-jdk \
  openssl \
  pgadmin3 \
  postgis \
  postgresql \
  postgresql-client \
  qt4-qmake \
  rake \
  redis-server \
  ruby-dev \
  rubygems \
  sqlite3 \
  tmux \
  vim-gnome\
  xclip \
  zlib1g \
  zlib1g-dev \
  zsh \
  && \

  # Run "indicator" from unity
  # Run "tweak tool" from unity and change Caps to Control: Typing / Caps Lock Behaviour / Make Caps lock extra Ctrl
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
  chsh -s /bin/zsh \
  
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
  gem install heroku bundler foreman --no-ri --no-rdoc && heroku keys:add && \
  

