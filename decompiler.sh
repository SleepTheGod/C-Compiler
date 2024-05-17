#!/bin/bash

# Usage function to display help
usage() {
    echo "Usage: $0 [-h] executable"
    echo "  -h    : Display this help message"
    echo "  executable : Executable file to decompile"
    exit 1
}

# Parse options
while getopts ":h" opt; do
    case ${opt} in
        h )
            usage
            ;;
        \? )
            echo "Invalid option: $OPTARG" 1>&2
            usage
            ;;
    esac
done
shift $((OPTIND -1))

# Check if an executable file was provided
if [ $# -ne 1 ]; then
    echo "Error: Please provide the executable file to decompile"
    usage
fi

executable=$1

# Check if the file exists
if [ ! -f "$executable" ]; then
    echo "Error: File $executable not found"
    exit 1
fi

# Disassemble the executable
objdump -d "$executable"
