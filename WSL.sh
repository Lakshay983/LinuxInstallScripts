#!/bin/bash

function USB(){
    sudo apt install linux-tools-generic hwdata
    sudo update-alternatives --install /usr/local/bin/usbip usbip /usr/lib/linux-tools/*-generic/usbip 20
}

USB