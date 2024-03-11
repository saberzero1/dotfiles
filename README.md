# dotfiles

 - [croire](https://github.com/saberzero1/croire/tree/main): NixOs configuration.
 - [martina](https://github.com/saberzero1/martina/tree/master): Keyboard configuration.
 - [shelter](https://github.com/saberzero1/shelter/tree/master): Neovim configuration.
 - [totten](https://github.com/saberzero1/totten/tree/master): Espanso configuration.

## Updating submodules:

```bash
git submodule update --init --remote --recursive
```

## Installing:

```bash
sudo nixos-rebuild build --flake ./croire/. --impure
```

 > [!WARNING]
 > `--impure` for now as I convert my Neovim configuration to [NixVim](https://github.com/nix-community/nixvim).
