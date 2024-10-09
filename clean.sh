#!/bin/bash
# Script to clean from the buildroot directory
# Store the current directory


if [ -d "buildroot"]; then
    make -C buildroot distclean
else
    echo "No buildroot directory"
    exit 1
fi

exit 0
