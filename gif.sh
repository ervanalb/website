#!/bin/bash

set -e

VF="fps=25,scale=320:-1:flags=lanczos"

if [ -n "$4" ]
then
    VF="$4"
fi

ffmpeg -y -ss "$2" -t "$3" -i "$1" -vf "$VF,palettegen" palette.png
ffmpeg -y -ss "$2" -t "$3" -i "$1" -i palette.png -filter_complex "$VF[x];[x][1:v]paletteuse" output.gif
rm palette.png
