#!/bin/bash

# Build Project for Deployment
# Author: Dan McCarthy

# Clear existing ./dist (doesn't apply to git workflow)
echo "===== Clear Existing ./dist ====="
if [-d ./dist]; then
    rm -rf ./dist;
fi

# Copy /src files to /dist
echo "===== Writing Files to ./dist ====="
for file in ./src/*; do
    # Prevent copying directories
done

# echo "===== Build HTML From Markdown ====="
# for file in ./dist/projects/*.md; do
#     echo $file

#     # $file and tempalte.html specify the target .md file and the html template
#     node ./utils/markdownBuilder.js $file ./utils/template.html
#     rm $file
# done

# for file in ./dist/posts/*.md; do
#     echo $file
    
#     # $file and tempalte.html specify the target .md file and the html template
#     node ./utils/markdownBuilder.js $file ./utils/template.html
#     rm $file
# done

# echo "===== Generate Custom Content ====="
# for 
