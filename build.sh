#!/bin/bash

# Check if a filename was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename.s>"
    exit 1
fi

# Get the filename without the .s extension
BASENAME=$(basename "$1" .s)

echo "Assembling $1..."
nasm -f elf64 "$1" -o "${BASENAME}.o"

# Check if assembly succeeded
if [ $? -eq 0 ]; then
    echo "Linking ${BASENAME}.o..."
    ld "${BASENAME}.o" -o "$BASENAME" -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2
    
    if [ $? -eq 0 ]; then
        echo "Build successful: ./${BASENAME}"
    else
        echo "Linking failed."
    fi
else
    echo "Assembly failed."
fi
