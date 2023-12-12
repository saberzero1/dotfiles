# Update profile settings

# Set Neovide path
if [ -d "$HOME/.cargo/bin" ] ; then
  PATH="$PATH:$HOME/.cargo/bin"
fi

# Neovim config
git clone https://github.com/saberzero1/nvim.git ${HOME}/.config/nvim