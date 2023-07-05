------------------------
Resume Viewer Script
------------------------

1. Introduction

This is a simple bash script that reads my resume from a PDF file, displays it, and prompts for feedback.

2. Pre-requisites

The script requires a Bash shell and 'pdftotext', to convert PDF files to text format.


Here's how to set up your environment on different operating systems:

    2.1 MacOS
    - Install 'pdftotext' with Homebrew. If you don't have Homebrew installed, install it from https://brew.sh/. Once Homebrew is installed, you can install 'pdftotext' with the command: 
        brew install poppler

    2.2 Ubuntu
    - Bash and 'pdftotext' are typically installed by default on Ubuntu. If 'pdftotext' isn't installed, install it with the command:
        sudo apt-get install poppler-utils

    2.3 Windows
    - Windows Subsystem for Linux (WSL): You can install WSL following the instructions at https://docs.microsoft.com/en-us/windows/wsl/install-win10. Once installed, you can install 'pdftotext' with the command:
            sudo apt-get install poppler-utils

3. How to Run the Script
    - Open a terminal window.
    - Navigate to the directory containing the script.
    - Make the script executable with the command: chmod +x resume.sh
    - Run the script with the command: ./resume.sh

