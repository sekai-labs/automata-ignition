#!/bin/bash

sudo apt-get update

# Install sudo
if ! command -v sudo &> /dev/null; then
    echo "sudo not found, installing sudo..."
    apt-get install -y sudo
else
    echo "sudo is already installed."
fi
