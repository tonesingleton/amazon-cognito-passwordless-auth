#!/bin/bash

if [ -z "$NPM_TOKEN" ]; then
  echo "Please enter your GitHub Personal Access Token:"
  read -s NPM_TOKEN
  export NPM_TOKEN
fi

echo "Building the package..."
npm run dist

# Publish the package
echo "Publishing package..."
npm publish

echo "Package published successfully!"
