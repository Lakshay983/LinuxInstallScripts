#!/bin/bash

function USB(){
    sudo apt install linux-tools-generic hwdata
    sudo update-alternatives --install /usr/local/bin/usbip usbip /usr/lib/linux-tools/*-generic/usbip 20
}

function Nix(){
    sudo apt install -y curl
    sh <(curl -L https://nixos.org/nix/install) --daemon
    . /home/lakshaygupta/.nix-profile/etc/profile.d/nix.sh
}

function ZSH(){
    sudo sh -c 'echo /home/lakshaygupta/.nix-profile/bin/zsh >> /etc/shells'
    chsh -s /home/lakshaygupta/.nix-profile/bin/zsh
}

USB
Nix
ZSH
