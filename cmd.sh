#!/bin/bash

# Path to the compiler script
compiler_script="./main.sh"
# Destination directory for installing the compiler tool
destination_dir="/usr/local/bin"

# Function to install the compiler tool
install_compiler() {
    echo "Installing the compiler tool as darn..."
    sudo cp "$compiler_script" "$destination_dir/darn"
    sudo chmod +x "$destination_dir/darn"
    echo "Compiler tool installed successfully as darn."
}

# Check if the compiler tool is already installed
if [ -x "$destination_dir/darn" ]; then
    echo "Compiler tool 'darn' is already installed."
    exit 0
fi

# Install the compiler tool
install_compiler
