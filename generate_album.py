#!/usr/bin/env python
from __future__ import print_function
import os
import sys
import exifread

directory = sys.argv[1]

filenames = os.listdir(directory)
def process(fn):
    full_fn = os.path.join(directory, fn)
    with open(full_fn, "rb") as f:
        tags = exifread.process_file(f)
    if full_fn.startswith("site"):
        full_fn = full_fn[4:]
    thumb_fn = full_fn
    if thumb_fn.endswith(".jpg"):
        thumb_fn = thumb_fn[:-4] + "_thumb.jpg"
    if thumb_fn.endswith(".mp4"):
        thumb_fn = thumb_fn[:-4] + "_thumb.gif"
    return (full_fn, thumb_fn, str(tags.get("EXIF DateTimeOriginal","")))

photos = [process(fn) for fn in filenames if not any([fn.endswith(s) for s in ("_thumb.jpg", "_thumb.gif")])]
photos.sort(key=lambda x: x[2])

for (web_fn, thumb_fn, _) in photos:
    print('[![]({})]({} "")'.format(thumb_fn, web_fn))

