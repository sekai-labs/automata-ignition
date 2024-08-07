#!/bin/bash

# Function to detect the operating system
detect_os() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "macOS"
    elif [[ -f /etc/os-release ]]; then
        # For Linux distributions
        . /etc/os-release
        case "$ID" in
            debian)
                echo "Debian"
                ;;
            ubuntu)
                echo "Ubuntu"
                ;;
            arch)
                echo "Arch"
                ;;
            *)
                echo "Unsupported Linux distribution"
                ;;
        esac
    else
        echo "Unsupported operating system"
    fi
}
