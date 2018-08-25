#!/bin/bash

cd $HOME

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

git clone https://github.com/powerline/fonts.git --depth=1 ~/fonts
cd fonts
./install.sh
cd ..
#rm -rf fonts

git clone https://github.com/gabrielelana/awesome-terminal-fonts.git ~/awesome-terminal-fonts
cd ~/awesome-terminal-fonts
./build.sh
./install.sh
cd -
#rm -rf awesome-terminal-fonts


mkdir -p $HOME/.bash/themes/agnoster-bash
git clone https://github.com/speedenator/agnoster-bash.git .bash/themes/agnoster-bash

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions

#curl -fsSLO https://raw.githubusercontent.com/Vaelatern/init-dotfiles/master/init_dotfiles.sh ~/
#chmod +x ~/init_dotfiles.sh
#~/init_dotfiles.sh


mkdir -p git-repos
git clone https://github.com/ansible/ansible.git ~/git-repos/ansible-repo

