#!/bin/bash

source installer.sh
source ../../../utils/io.sh

response=$(ask_question "Do you want to install docker? (y/n)")

if ["$response" == "y"]; then
    echo "Start to reset docker..."
    reset_docker
    echo "Start to install docker..."
    install_docker
    echo "Import user to docker group"
    add_user_docker_group
    echo "Finish install Docker"
else
    echo "Skipped !!!"
fi

response=$(ask_question "Do you want to install docker tools(y/n)")

if ["$response" == "y"]; then
    echo "Start to install tools for use with docker"
    source docker_tools.sh
else
    echo "Skipped"
fi

