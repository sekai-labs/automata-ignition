#!/bin/bash

ask_question() {
    local question="$1"
    local response
    echo "$question"
    read response
    echo "$response"
}