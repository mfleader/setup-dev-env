# latest stable release of git for ubuntu
#add-apt-repository ppa:git-core/ppa
apt install -y git snapd

snap install bitwarden discord insomnia vlc
snap install --classic code
snap install --classic pycharm-community
snap install --classic slack


# install tile-based terminal emulator
# zsh, autojump
apt install -y tilix zsh autojump fonts-firacode

# to convert notebooks to pdf
#apt install -y texlive-xetex pandoc

# virtualization tools
#apt install -y vagrant

# vim
#apt install -y vim
#echo 'syntax on' >> ~/.vimrc
#echo 'set pastetoggle=<F8>' >> ~/.vimrc

# screen recorder
apt install -y kazam

# To use autojump, you need to configure you shell to source
# /usr/share/autojump/autojump.sh on startup.
. /usr/share/autojump/autojump.sh >> ~/.zshrc
. /usr/share/autojump/autojump.sh >> ~/.bashrc

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# addtional oh-my-zsh plugins
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# best oh-my-zsh theme
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
# to set the new theme
# go to ~/.zshrc and change ZSH_THEME='powerlevel10k/powerlevel10k'

# install fonts with glyphs
#git clone git@github.com:ryanoasis/nerd-fonts.git ./.nerd-fonts
#./.nerd-fonts/install.sh FiraCode
#gsettings set org.gnome.desktop.interface monos
#pace-font-name 'FiraCode Nerd Font Mono Regular'


# enable oh-my-zsh plugins
# plugins=(git sudo debian extract zsh-autosuggestions docker docker-compose autojump zsh-syntax-highlighting npm node nvm python pip pyenv virtualenv fabric postgres mix heroku colorize mvn)

#apt install -y default-jdk
#echo 'export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")' >> ~/.zshrc
# change system jvm binary
# sudo update-alternatives --config java

# Scala team only supports LTS jdk (8, 11), and has not completed support for jdk-11
#apt install -y openjdk-8-jdk scala

# install scala build tool (sbt)
#echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
#apt update
#apt install sbt

# install hadoop
# https://www.digitalocean.com/community/tutorials/how-to-install-hadoop-in-stand-alone-mode-on-ubuntu-18-04


# install spark
# https://computingforgeeks.com/how-to-install-apache-spark-on-ubuntu-debian/
# use a sym link to be able to switch between multiple versions of spark
# ln -s /opt/spark-1.2.0 /opt/spark̀

# pyspark (after install pyenv)
# pip install pyspark
#echo 'export PYSPARK_DRIVER_PYTHON=jupyter' >> ~/.zshrc
#echo 'export PYSPARK_DRIVER_PYTHON_OPTS="notebook"' >> ~/.zshrc

# install r, rstudio, and r package deps
# these might be deprecated
#apt install -y libclang-8-dev libclang-common-8-dev libclang-dev libclang1-8 libobjc-8-dev libobjc4 libcurl4-openssl-devl libxml2-dev libcairo2-dev

# 2021/01/20 do need these for tidyverse
# apt install -y libssl-dev
# missing httr again

# r package => r package
# tidyverse => httr, rvest, openssl
# rvest => xml2
# rstan => shinystan
# shinystan => V8
# ggstatsplot => PMCMRplus
# PMCMRplus => Rmpfr, gmp
# hrbrthemes => gdtools
# ggalt => proj4

# r package => deb | rpm
# curl => libcurl4-openssl-dev | ?
# xml2 => libxml2-dev | libxml2-devel
# openssl => libssl-dev | openssl-devel
# httr => libcurl4-openssl-dev | libcurl-devel
# devtools => libgit2-dev | libgit2-devel
# V8 => libnode-dev | v8-devel
# gmp => libgmp-dev | gmp-devel
# Rmpfr => libmpfr-dev | mpfr-devel
# gdtools => libfontconfig1-dev, libcairo2-dev | fontconfig-devel, cairo-devel
# proj4 => libproj-dev, libgdal-dev | ?, ?

# rstudio
# download rstudio*.deb
# sudo apt install -y gdebi-core
# sudo gdebi rstudio*.deb

# install github cli
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9A2FD067A2E3EF7B
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
