sudo apt-get install build-essential gnome-do \
  git-core git-cola ruby-dev rubygems rake curl vim-gnome \
  exuberant-ctags screen libopenssl-ruby && \
  bash < <(curl -s https://rvm.beginrescueend.com/install/rvm) && \
  rvm install package zlib && \
  rvm install 1.9.2 --with-zlib-dir=$rvm_path/usr --with-readline-dir="$HOME/.rvm/usr" && \
  ssh-keygen -t rsa -C "diazruy@gmail.com" && \
  cat id_rsa.pub && echo "Intall SSH Key in github" && pause && \
  git clone git@github.com:diazruy/dotvim.git ~/.vim && \
  ls -s ~/.vim/vimrc ~/.vimrc && \
  cd ~/.vim && \
  git submodule init && git submodule update && \
  cd bundle/command-t && rvm use system && rake make

