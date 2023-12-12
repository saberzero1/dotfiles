#!/bin/bash
#
# Install applications
# Comment (with #) what should not be installed and add the applications you want to install.

source ./scripts/utils.sh

echo_info "Installing apps..."

# Update Ubuntu
sudo apt update && sudo apt upgrade -y

# Ubuntu WSL
# Check out https://github.com/wslutilities/wslufor more details
sudo apt install -y ubuntu-wsl

# Essential package
sudo apt install -y build-essential

# Common packages
sudo apt install -y apt-transport-https ca-certificates curl \
    gawk ssh-askpass tree unzip wget zsh

# Build dependencies
sudo apt install -y gnupg clang gcc-multilib g++-multilib cmake \
    libssl-dev pkg-config libfreetype6-dev libasound2-dev \
    libexpat1-dev libxcb-composite0-dev libbz2-dev libsndio-dev \
    freeglut3-dev libxmu-dev libxi-dev libfontconfig1-dev libxcursor-dev

# Git
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update && sudo apt install -y git

# Nodejs
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs yarn

# AppImageLauncher
sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:appimagelauncher-team/stable
sudo apt update && sudo apt install -y appimagelauncher

# AppImage folder
mkdir ${HOME}/Applications ${HOME}/Applications

# Obsidian
sudo wget -O ${HOME}/Applications/Obsidian.AppImage https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.16/Obsidian-1.4.16.AppImage
sudo chmod u+x ${HOME}/Applications/Obsidian.AppImage
sudo ln -s ${HOME}/Applications/Obsidian.AppImage obsidian

# Neovim
# sudo apt install -y neovim=0.9.4
sudo wget -O ${HOME}/Applications/nvim.Appimage https://github.com/neovim/neovim/releases/download/v0.9.4/nvim.appimage
sudo chmod u+x ${HOME}/Applications/nvim.AppImage

# Neovide (Neovim GUI)
# cargo install --git https://github.com/neovide/neovide
sudo wget -O ${HOME}/Applications/neovide.AppImage https://github.com/neovide/neovide/releases/download/0.11.2/neovide.AppImage
sudo chmod u+x ${HOME}/Applications/neovide.AppImage

# Helix
# sudo add-apt-repository -y ppa:maveonair/helix-editor
# sudo apt update && sudo apt install -y helix
sudo wget -O ${HOME}/Applications/helix.AppImage https://github.com/helix-editor/helix/releases/download/23.10/helix-23.10-x86_64.AppImage
sudo chmod u+x ${HOME}/Applications/helix.AppImage

# Finish
echo_success "Finished applications installation."
