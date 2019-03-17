#!/bin/bash

set -e

VF="scale=-1:720"

if [ -n "$4" ]
then
    VF="$4"
fi

ffmpeg -y -ss "$2" -t "$3" -i "$1" -vf "$VF" -c:v libx264 -preset slow -an output.mp4
