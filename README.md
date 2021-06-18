# Bezerra's personal Ubuntu WSL

This repo configure a Ubuntu WSL to be ready and pleasant to work with software
development.

## Requirements

- Ubuntu WSL installed and running
- Git installed on windows: [Download](https://git-scm.com/downloads)

## What will be configured

- Git
- ZSH
- Antigen

We setup Git to retrieve credentials from windows, then we can download github
repos using HTTPS authenticating through SSO with your browser.
Commit author will be configured as well.

ZSH will receive oh-my-zsh plugins using antigen and a small set of plugins are
available out of the box, as some autocompletes and enhanced history with
`ctrl+r`.

## How to execute

- Open your WSL terminal
- Clone this repo: `git clone https://github.com/paulobezerr/wsl-personal-installer ~/.wsl-personal-installer`
- Get into it: `cd ~/.wsl-personal-installer`
- Copy `example.env` to `.env` and replace variables
- Run `./install.sh`
- Reopen your terminal
- Enjoy your setup
- Contribute with this repo :smiley:
