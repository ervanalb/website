#!/bin/bash -ex

find content -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.JPG" -o -name "*.JPEG" \) -exec exiftran -ai {} \;
find content -type f -! \( -name "*.md" -o -name "*.pdf" -o -name "*_original" -o -name ".gitignore" \) -exec exiftool -all= {} \;

#find content -type f -name "*_original" -exec echo rename _original "" {} \;
