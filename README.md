# Bezerra's personal Ubuntu WSL

This repo configure a Ubuntu WSL to be ready and pleasant to work with software
development.

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

- copy `example.env` to `.env` and replace variables
- run `./install.sh`
- Reopen your terminal
- Enjoy your setup
- Contribute with this repo :smiley:
