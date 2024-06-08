# dotfiles

## Croire

<a href="https://github.com/saberzero1/croire/tree/main"><img src="https://github.com/saberzero1/croire/blob/main/Croire7.png"></a>

 - [Croire](https://github.com/saberzero1/croire/tree/main): NixOs configuration.

## Jackson

<a href="https://github.com/saberzero1/jackson/tree/master"><img src="https://github.com/saberzero1/jackson/blob/master/Jackson3.png"></a>

 - [Jackson](https://github.com/saberzero1/jackson/tree/master): Miscellaneous configuration.

## Martina

<a href="https://github.com/saberzero1/martina/tree/master"><img src="https://github.com/saberzero1/martina/blob/master/Martina3.png"></a>

 - [Martina](https://github.com/saberzero1/martina/tree/master): Keyboard configuration.

## Shelter

<a href="https://github.com/saberzero1/shelter/tree/master"><img src="https://github.com/saberzero1/shelter/blob/master/Shelter3.png"></a>

 - [Shelter](https://github.com/saberzero1/shelter/tree/master): Neovim configuration.

## Totten

<a href="https://github.com/saberzero1/totten/tree/master"><img src="https://github.com/saberzero1/totten/blob/master/Totten3.png"></a>

 - [Totten](https://github.com/saberzero1/totten/tree/master): Espanso configuration.

## Updating package versions (flakes)

```bash
nix flake update
```

## Updating submodules:

```bash
git submodule update --init --remote --recursive
```

## Installing:

```bash
sudo nixos-rebuild build --flake ./croire/. --impure
```

```bash
sudo nixos-rebuild test --flake ./croire/. --impure
```

```bash
sudo nixos-rebuild switch --flake ./croire/. --impure
```

 > [!WARNING]
 > `--impure` for now as I convert my Neovim configuration to [NixVim](https://github.com/nix-community/nixvim).

## Garbage collect

```bash
nix-collect-garbage -d
```
