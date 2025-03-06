#!/bin/bash

# Define the source and destination paths
SOURCE="/home/lakshaygupta/LinuxInstallScripts/home.nix"
DESTINATION="/home/lakshaygupta/.config/home-manager/home.nix"

# Copy the home.nix file to the home-manager configuration directory
cp "$SOURCE" "$DESTINATION"

# Run the home-manager switch command
home-manager switch

# Print a success message
echo "home.nix has been updated and home-manager switch has been executed."