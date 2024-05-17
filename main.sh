#!/bin/bash

# Usage function to display help
usage() {
    echo "Usage: $0 [options] source_file.c"
    echo "Options:"
    echo "  -v                : Verbose mode, show detailed compilation commands"
    echo "  -O level          : Optimization level (0, 1, 2, 3, s, or fast)"
    echo "  -g                : Include debugging information"
    echo "  -o output_file    : Specify output filename"
    echo "  --help            : Display this help message"
    echo "  source_file.c     : Source file to compile"
    exit 1
}

# Default values
verbose=0
opt_level=""
debug_info=0
output_file=""

# Parse options
while [[ "$1" =~ ^- ]] && [[ "$1" != "--" ]]; do
    case "$1" in
        -v )
            verbose=1
            ;;
        -O )
            shift
            opt_level="-O$1"
            ;;
        -g )
            debug_info=1
            ;;
        -o )
            shift
            output_file=$1
            ;;
        --help )
            usage
            ;;
        * )
            echo "Unknown option: $1"
            usage
            ;;
    esac
    shift
done

# Check if the remaining argument is the source file
if [ $# -ne 1 ]; then
    usage
fi

source_file=$1

# Check if the provided file has a .c extension
if [[ ${source_file##*.} != "c" ]]; then
    echo "Error: The provided file does not have a .c extension"
    exit 1
fi

# Check if the file exists
if [ ! -f "$source_file" ]; then
    echo "Error: File $source_file not found"
    exit 1
fi

# Extract the filename without the extension if no output file specified
if [ -z "$output_file" ]; then
    output_file="${source_file%.*}.out"
fi

# Prepare gcc command
gcc_cmd="gcc"

if [ ! -z "$opt_level" ]; then
    gcc_cmd+=" $opt_level"
fi

if [ $debug_info -eq 1 ]; then
    gcc_cmd+=" -g"
fi

gcc_cmd+=" -o $output_file $source_file"

# Compile the C file
if [ $verbose -eq 1 ]; then
    echo "Compiling with command: $gcc_cmd"
fi

$gcc_cmd

# Check if the compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful. Output file: $output_file"
else
    echo "Compilation failed."
    exit 1
fi
