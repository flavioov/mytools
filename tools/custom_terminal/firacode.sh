
# add firacode repositoryies
sudo add-apt-repository universe
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
sudo apt-get update

# install firacode fonts
sudo apt install fonts-firacode
