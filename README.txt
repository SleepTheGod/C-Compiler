██████╗  █████╗ ██████╗ ███╗   ██╗
██╔══██╗██╔══██╗██╔══██╗████╗  ██║
██║  ██║███████║██████╔╝██╔██╗ ██║
██║  ██║██╔══██║██╔══██╗██║╚██╗██║
██████╔╝██║  ██║██║  ██║██║ ╚████║
╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
 ██████╗ ██████╗ ███╗   ███╗██████╗ ██╗██╗     ███████╗██████╗ 
██╔════╝██╔═══██╗████╗ ████║██╔══██╗██║██║     ██╔════╝██╔══██╗
██║     ██║   ██║██╔████╔██║██████╔╝██║██║     █████╗  ██████╔╝
██║     ██║   ██║██║╚██╔╝██║██╔═══╝ ██║██║     ██╔══╝  ██╔══██╗
╚██████╗╚██████╔╝██║ ╚═╝ ██║██║     ██║███████╗███████╗██║  ██║
 ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝                            
Made By Taylor Christian Newsome

Advanced C Compiler Script
This repository contains a powerful Bash script designed to compile C programs easily and efficiently. 
The script provides advanced features such as verbose mode, optimization levels, debugging information, and custom output filenames, making it a versatile tool for both novice and experienced developers.

Features

Verbose Mode: Display detailed compilation commands.
Optimization Levels: Choose from various optimization levels (0, 1, 2, 3, s, or fast).
Debugging Information: Include debugging symbols in the compiled output.
Custom Output Filename: Specify a custom name for the compiled executable.
Help Option: Display a helpful usage guide.

Usage

./main.sh [options] source_file.c

Options

-v : Verbose mode, show detailed compilation commands.
-O level : Optimization level (0, 1, 2, 3, s, or fast).
-g : Include debugging information.
-o output_file : Specify output filename.
--help : Display the help message.

Examples

Compile a C file with default settings
./main.sh example.c

Compile with optimization level 2 and debugging information
./main.sh -O2 -g example.c

Compile in verbose mode with a custom output filename
./main.sh -v -o myprogram example.c

Installation

Clone the repository
git clone https://github.com/SleepTheGod/C-Compiler

Navigate to the repository directory
cd C-Compiler

Make the script executable
chmod +x main.sh

Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your improvements or bug fixes. 
For major changes, please open an issue first to discuss what you would like to change.
