#!/bin/bash

# Usage function to display help
usage() {
    echo "Usage: $0 <source_file.c>"
    echo "  source_file.c     : Source file to compile"
    exit 1
}

# Check if a source file was provided
if [ $# -ne 1 ]; then
    usage
fi

source_file="$1"

# Check if the provided file exists
if [ ! -f "$source_file" ]; then
    echo "Error: File $source_file not found"
    exit 1
fi

# Path to your compiler script
compiler_script="./main.sh"

# Install the compiler tool as botnet
install_compiler() {
    echo "Installing the compiler tool as darn..."
    cp "$compiler_script" "$HOME/.local/bin/darn"
    chmod +x "$HOME/.local/bin/darn"
    echo "Compiler tool installed successfully as darn."
}

# Compile the source file
compile() {
    echo "Compiling $source_file..."
    botnet "$source_file"
}

# Check if botnet command is available
if ! command -v darn &> /dev/null; then
    install_compiler
fi

# Check if help option is provided
if [ "$1" == "--h" ]; then
    echo "Usage: darn <source_file.c>"
    echo "  source_file.c     : Source file to compile"
    exit 0
fi

# Compile the source file
compile
