#!/bin/bash

if [ "$(printf '%s\n' "$2" "$1" | sort -V | head -n1)" = "$2" ]; then
    echo "ERROR"
    exit 1
else
    echo "OK"
    exit 0
fi