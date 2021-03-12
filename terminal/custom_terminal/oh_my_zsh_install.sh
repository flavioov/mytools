
###################
#### dracula ######
###################
sudo apt-get install dconf-cli -y
git clone https://github.com/dracula/gnome-terminal
./gnome-terminal/install.sh

###############
#### zsh ######
###############
sudo apt-get install zsh -y

chsh -s $(which zsh)
echo $SHELL
#sudo reboot

#####################
#### oh my zsh ######
#####################
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

###########################
#### spaceship theme ######
###########################
git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/themes/spaceship-prompt
ln -s ~/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/themes/spaceship.zsh-theme

vim ~/.zshrc

cat ./zsh_spaceship.conf >> ~/.zshrc
#################
#### zinit ######
#################
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

echo zinit light zdharma/fast-syntax-highlighting >> ~/.zshrc
echo zinit light zsh-users/zsh-autosuggestions >> ~/.zshrc
echo zinit light zsh-users/zsh-completions >> ~/.zshrc


####################
#### firacode ######
####################
# add firacode repositoryies
sudo add-apt-repository universe
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
sudo apt-get update

# install firacode fonts
sudo apt install fonts-firacode -y

rm -rf ./gnome-terminal

echo ./aliases.conf >> ~/.zshrc
