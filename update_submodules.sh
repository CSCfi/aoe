#!/bin/bash

# Initialize and update submodules
git submodule update --init --recursive

# Pull the latest changes in each submodule
git submodule foreach "branch=$(git symbolic-ref --short HEAD); git fetch origin $branch; git pull origin $branch"

# Add the updated submodules to the parent repository
git add .
git commit -m "Submodules updated to the latest commits"
git push origin main