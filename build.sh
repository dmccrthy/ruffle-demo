#!/bin/bash

# Build Project for Deployment
# Author: Dan McCarthy

# Clear existing ./dist (doesn't apply to git workflow)
echo "===== Clear Existing ./dist ====="
if [ -d "./dist" ]; then
    rm -rf ./dist;
fi

# Creat ./dist and add files
echo "===== Copy Files to ./dist ====="
mkdir dist
cd dist
cp ../src/js . -r
cp ../src/games/ . -r
cp ../src/CNAME .
cp ../src/index.html .
mv ./games ./swf


# Generate pages for each game
echo "===== Writing Files to ./dist ====="
for file in ./swf/*; do
    echo $file;
    node ../src/utils/buildHtml.js $file
done
