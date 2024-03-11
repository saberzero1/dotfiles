# dotfiles

 - [croire](./croire/): NixOs configuration.
 - [martina](./martina/): Keyboard configuration.
 - [shelter](./shelter/): Neovim configuration.
 - [totten](./totten/): Espanso configuration.

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
