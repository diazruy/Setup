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
  openjdk-8-jdk \
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
  shutter \
  sqlite3 \
  tmux \
  vim-gnome\
  xclip \
  zlib1g \
  zlib1g-dev \
  zsh \
  && \

  # SSH
  ssh-keygen -t rsa -C "diazruy@gmail.com" && \
  cat ~/.ssh/id_rsa.pub && echo "Intall SSH Key in github" && \
 
  # Run "indicator" from unity
  # Run "tweak tool" from unity and change Caps to Control: Typing / Caps Lock Behaviour / Make Caps lock extra Ctrl
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
  chsh -s /bin/zsh &&
  
  git clone git@github.com:diazruy/dotfiles.git &&
  cd ~/.dotfiles &&
  ./setup.sh &&
  
  git clone git@github.com:diazruy/dotvim.git ~/.vim &&
  ln -s ~/.vim/.vimrc ~/.vimrc &&
  cd ~/.vim
  git submodule init
  git submodule update
  
  # RVM
  curl -sSL https://get.rvm.io | bash -s stable && 
  # Change Terminal Profile settings under Command and select "Run command as login shell"

  sudo -u postgres createuser -s ruy -P &&
  
  curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add &&
  sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update' &&
  sudo apt install pgadmin4
  
  sudo snap install --classic heroku &&
  heroku login && 
    
  read -p "Add 'export TERM=xterm-256color' to .bashrc" 
  

