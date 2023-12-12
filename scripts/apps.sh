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
sudo apt install -y gnupg gcc-multilib g++-multilib cmake \
    libssl-dev pkg-config libfreetype6-dev libasound2-dev \
    libexpat1-dev libxcb-composite0-dev libbz2-dev libsndio-dev \
    freeglut3-dev libxmu-dev libxi-dev libfontconfig1-dev libxcursor-dev

# Git
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update && sudo apt install -y git

# Nodejs
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs yarn

# Neovim
sudo apt install -y neovim=0.9.4

# Neovide (Neovim GUI)
cargo install --git https://github.com/neovide/neovide

# Finish
echo_success "Finished applications installation."
