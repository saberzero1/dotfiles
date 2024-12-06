# just is a command runner, Justfile is very similar to Makefile, but simpler.
# Shamelessly stolen from https://nixos-and-flakes.thiscute.world/best-practices/simplify-nixos-related-commands

############################################################################
#
#  Nix commands related to the local machine
#
############################################################################

[linux]
force:
  # Force update all submodules
  sudo git submodule update --init --remote --recursive --force

[macos]
force:
  # Force update all submodules
  git submodule update --init --remote --recursive --force

fetch:
  # Fetch all submodules
  git submodule update --init --remote --recursive

[macos]
build:
  # Build all submodules into NixOS configurations
  sudo -s -u $(whoami) darwin-rebuild build --flake ./croire/. --impure

[linux]
build:
  # Build all submodules into NixOS configurations
  sudo nixos-rebuild build --flake ./croire/. --impure --use-remote-sudo

[linux]
test:
  # Test all submodules into NixOS configurations
  sudo nixos-rebuild test --flake ./croire/. --impure --use-remote-sudo

[macos]
switch:
  # Switch to built configurations
  sudo -s -u $(whoami) darwin-rebuild switch --flake ./croire/. --impure

[linux]
switch:
  # Switch to built configurations
  sudo nixos-rebuild switch --flake ./croire/. --impure --use-remote-sudo

[macos]
all: fetch build switch

[linux]
all: fetch build test switch

debug:
  # Debug NixOS configurations
  nixos-rebuild switch --flake ./croire/. --impure --use-remote-sudo --show-trace --verbose --option eval-cache false

update:
  # Update flake.lock
  nix flake update

# Update specific input
# usage: make upp i=home-manager
upp input:
  nix flake lock --update-input {{input}}

history:
  nix profile history --profile /nix/var/nix/profiles/system

repl:
  nix repl -f flake:nixpkgs

[unix]
clean-old:
  # remove all generations older than 7 days
  sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d

[linux]
gc:
  # garbage collect all unused system nix store entries
  sudo nix-collect-garbage -d

[macos]
gc:
  # garbage collect all unused system nix store entries
  sudo -s -u $(whoami) nix-collect-garbage -d

[unix]
gc-user:
  # garbage collect all unused user nix store entries
  nix-collect-garbage -d

[unix]
clean:
  # remove all old generations from boot
  sudo /run/current-system/bin/switch-to-configuration boot

[macos]
optimize:
  # hard link system nix stores
  sudo -s -u $(whoami) nix store optimise

[linux]
optimize:
  # hard link system nix stores
  sudo nix store optimise

[unix]
optimize-user:
  # hard link user nix stores
  nix store optimise

[macos]
clean-all: gc gc-user optimize optimize-user gc gc-user

[linux]
clean-all: gc gc-user optimize optimize-user gc gc-user clean

# Commiting
commit:
  git commit -a -m "Updated Submodules"

############################################################################
#
#  Idols, Commands related to my remote distributed building cluster
#
############################################################################

# add-idols-ssh-key:
#   ssh-add ~/.ssh/ai-idols
#
# aqua: add-idols-ssh-key
#   nixos-rebuild --flake .#aquamarine --target-host aquamarine --build-host aquamarine switch --use-remote-sudo
#
# aqua-debug: add-idols-ssh-key
#   nixos-rebuild --flake .#aquamarine --target-host aquamarine --build-host aquamarine switch --use-remote-sudo --show-trace --verbose
#
# ruby: add-idols-ssh-key
#   nixos-rebuild --flake .#ruby --target-host ruby --build-host ruby switch --use-remote-sudo
#
# idols: aqua ruby kana
#
# idols-debug: aqua-debug ruby-debug kana-debug
