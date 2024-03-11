# dotfiles

## Croire

<a href="https://github.com/saberzero1/croire/tree/main"><img src="./croire/Croire7.png"></a>

 - [Croire](https://github.com/saberzero1/croire/tree/main): NixOs configuration.

## Martina

<a href="https://github.com/saberzero1/martina/tree/master"><img src="./martina/Martina3.png"></a>

 - [Martina](https://github.com/saberzero1/martina/tree/master): Keyboard configuration.

## Shelter

<a href="https://github.com/saberzero1/shelter/tree/master"><img src="./shelter/Shelter3.png"></a>

 - [Shelter](https://github.com/saberzero1/shelter/tree/master): Neovim configuration.

## Totten

<a href="https://github.com/saberzero1/totten/tree/master"><img src="./totten/Totten3.png"></a>

 - [Totten](https://github.com/saberzero1/totten/tree/master): Espanso configuration.

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
