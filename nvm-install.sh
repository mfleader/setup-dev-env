# install node version manager
git clone git@github.com:nvm-sh/nvm.git ~/.nvm
cd ~/.nvm
git checkout v0.34.0
source ./nvm.sh
if [-f ~/.zshrc]; then
	echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
	echo '[ -s "NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh' >> ~/.zshrc
	echo '[ -s "NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.zshrc
fi
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
echo '[ -s "NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh' >> ~/.bashrc
echo '[ -s "NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.bashrc

