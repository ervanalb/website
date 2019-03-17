#!/bin/bash

set -e

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$1")
TARGET_DURATION=2
MULT=$(echo "$TARGET_DURATION / $DURATION" | bc -l)

VF="fps=2,scale=320:-1:flags=lanczos,setpts=${MULT}*PTS"

ffmpeg -y -i "$1" -vf "$VF,palettegen" palette.png
ffmpeg -y -i "$1" -i palette.png -filter_complex "$VF[x];[x][1:v]paletteuse" "$2"
rm palette.png
