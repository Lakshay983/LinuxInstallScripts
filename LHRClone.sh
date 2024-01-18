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
    git clone git@github.com:lhr-solar/Embedded-Sharepoint.git --recursive
    cd Embedded-Sharepoint/Scripts
    bash install.sh -Ii
    cd ..
    cd ..
}

function BPS(){
    git clone git@github.com:lhr-solar/BPS.git --recursive
    cd ..
}

function Controls(){
    git clone git@github.com:lhr-solar/Controls.git --recursive
    cd ..
}

makeDirectory

cd LHR

EmbeddedSharePoint

BPS

Controls