#!/bin/bash
# Script to clean from the buildroot directory
# Store the current directory
ROOT_DIR=$(pwd)

# Go to buildroot
cd ${ROOT_DIR}/buildroot

# Run make distclean
make distclean
