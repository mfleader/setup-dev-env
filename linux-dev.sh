# install tile-based terminal emulator
# zsh, autojump
apt install -y tilix zsh autojump

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

# enable oh-my-zsh plugins
# plugins=(git sudo debian extract zsh-autosuggestions docker docker-compose autojump zsh-syntax-highlighting npm node nvm python pip pyenv virtualenv fabric postgres mix heroku colorize mvn)
