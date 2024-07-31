#bash -c "$(wget -qLO - https://raw.githubusercontent.com/majordingleberry/dotfiles/main/install.sh)"


#get up to speed
sudo apt update && sudo apt upgrade -y
##next up - utilities

# if its really bare
#sudo apt install openSSH-server

# general progs
sudo apt install unzip git tree stow zoxide zsh neovim

# oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d /bin


# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# my dotfiles
git clone git@gitea.lab.nyga.us:andreas/dotfiles.git ~/dotfiles


# apply them
cd ~/dotfiles
stow zsh
#stow oh-my-posh
stow nvim
#stow an
