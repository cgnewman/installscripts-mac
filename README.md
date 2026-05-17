# Install Scripts for macOS

This repository contains the scripts to setup a new macOS system. 

These scripts should be used after the OOTB setup, App Store login, and applying all updates to the operating system. **No new software should be installed and no settings set.**

## Step 1: Prepare
Open the macOS Terminal app and run the following command:

`/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/cgnewman/installscripts-mac/HEAD/01-prepare.zsh)"