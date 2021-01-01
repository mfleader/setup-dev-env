# latest stable release of git for ubuntu
add-apt-repository ppa:git-core/ppa
apt install -y git

# install backup tools
apt install -y duplicity python-gi

# install tile-based terminal emulator
# zsh, autojump
apt install -y tilix zsh autojump fonts-firacode

# to convert notebooks to pdf
apt install -y texlive-xetex pandoc

# virtualization tools
apt install -y vagrant

# vim
apt install -y vim
echo 'syntax on' >> ~/.vimrc
echo 'set pastetoggle=<F8>' >> ~/.vimrc

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
git clone git@github.com:ryanoasis/nerd-fonts.git ./.nerd-fonts
./.nerd-fonts/install.sh FiraCode
gsettings set org.gnome.desktop.interface monos
pace-font-name 'FiraCode Nerd Font Mono Regular
'


# enable oh-my-zsh plugins
# plugins=(git sudo debian extract zsh-autosuggestions docker docker-compose autojump zsh-syntax-highlighting npm node nvm python pip pyenv virtualenv fabric postgres mix heroku colorize mvn)

apt install -y default-jdk
echo 'export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")' >> ~/.zshrc
# change system jvm binary
# sudo update-alternatives --cofnig java

# Scala team only supports LTS jdk (8, 11), and has not completed support for jdk-11
apt install -y openjdk-8-jdk scala

# install scala build tool (sbt)
echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
apt update
apt install sbt

# install hadoop
# https://www.digitalocean.com/community/tutorials/how-to-install-hadoop-in-stand-alone-mode-on-ubuntu-18-04


# install spark
# https://computingforgeeks.com/how-to-install-apache-spark-on-ubuntu-debian/
# use a sym link to be able to switch between multiple versions of spark
# ln -s /opt/spark-1.2.0 /opt/spark̀

# pyspark (after install pyenv)
# pip install pyspark
echo 'export PYSPARK_DRIVER_PYTHON=jupyter' >> ~/.zshrc
echo 'export PYSPARK_DRIVER_PYTHON_OPTS="notebook"' >> ~/.zshrc

# install r, rstudio, and r package deps
apt install -y libclang-8-dev libclang-common-8-dev libclang-dev libclang1-8 libobjc-8-dev libobjc4 libcurl4-openssl-devl libxml2-dev libcairo2-dev



