#!/bin/zsh
# setup.sh
# This script runs on all new MacOS machines to setup the initial directories and bootstrap 
# Chezmoi and Brew
# should be used to set up the environment for all shells including
# environment variables and path
#
# 2026-05-16: initial version
#

# Set up XDG base directories.
# Spec: https://specifications.freedesktop.org/basedir-spec/latest/index.html
# ------------------------------------------------------------------------------
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-$HOME/.runtime}

## Make sure directories actually exist
xdg_dirs=("$XDG_CONFIG_HOME" "$XDG_CACHE_HOME" "$XDG_DATA_HOME" "$XDG_STATE_HOME" "$XDG_RUNTIME_DIR")
for dir in "${xdg_dirs[@]}"; do
  if [[ ! -d "$dir" ]]; then
    mkdir -p "$dir"
  fi
done

# Set up Other Home Directories
mkdir ~/Atlas
mkdir ~/Cloud
mkdir ~/Containers
mkdir ~/Dev
mkdir ~/VirtualMachines

# Setup directors to keep Home clear of dot directories
mkdir $XDG_DATA_HOME/gem
mkdir $XDG_CACHE_HOME/gem
mkdir $XDG_CACHE_HOME/cargo
mkdir $XDG_CACHE_HOME/cpanm
mkdir $XDG_CONFIG_HOME/docker
mkdir $XDG_DATA_HOME/volta
mkdir $XDG_CONFIG_HOME/zsh
mkdir $XDG_CONFIG_HOME/azure
mkdir $XDG_DATA_HOME/pyenv
mkdir ~/.1password
mkdir ~/.ssh
chmod 700 ~/.ssh

