#!/bin/bash

function preReqs(){
    # Update your software repositories.
    sudo apt-get update
    sudo apt-get upgrade

    # Install Git.
    sudo apt-get install -y git

    # Install Vim.
    sudo apt-get install -y vim

    # Install zsh
    sudo apt intsall zsh
}

function terminalThemes(){

    #For getting Gogh themes
    echo "Intsall Gogh themes"
    sudo apt-get install dconf-cli uuid-runtime
    bash -c "$(wget -qO- https://git.io/vQgMr)"
    
    #Selects the Linux theme "Clone of Ubuntu"
    43 
}

function terminalTools(){

}
