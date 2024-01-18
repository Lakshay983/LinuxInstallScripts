#!/bin/bash

function makeDirectory(){
    dirname = '/home/laksh/LHR'
    
    if [ -d "$dirname" ]; then
        echo "$dirname exists."
    else
        echo "$dirname does not exist. Making directory"
        cd ..
        mkdir LHR
    fi
}

function EmbeddedSharePoint(){
    echo "Cloning the Embedded Sharepoint repository"
    git clone git@github.com:lhr-solar/Embedded-Sharepoint.git --recursive
    cd Embedded-Sharepoint/Scripts
    echo "Running embedded install script"
    bash install.sh -Ii
    cd ..
    cd ..
}

function BPS(){
    echo "Cloning the BPS repository"
    git clone git@github.com:lhr-solar/BPS.git --recursive
    cd ..
}

function Controls(){
    echo "Cloning the Controls repository"
    git clone git@github.com:lhr-solar/Controls.git --recursive
    cd ..
}

function KiCAD(){
    echo "Installing KiCAD"
    sudo add-apt-repository --yes ppa:kicad/kicad-7.0-releases
    sudo apt update
    sudo apt install --install-recommends kicad
}

makeDirectory

cd LHR

EmbeddedSharePoint

BPS

Controls

KiCAD