Title: ffedit
Date: 2019-01-01
Category: Projects
Tags: software

ffedit is a command-line tool for video editing.
ffmpeg can cut and splice together video clips, but the syntax for doing so quickly gets out of control for large numbers of clips.
ffedit takes in a YAML file that describes which parts of which clips to combine, any filters that should be applied to them,
and invokes ffmpeg to produce the desired output.
You can look at usage and download it from [Github](https://github.com/ervanalb/ffedit).

---BREAK---
With ffedit, concatenating video files is as simple as:
```yaml
all:
  - a.mkv
  - b.mkv
```

but it supports advanced usage, such as:
```yaml
all:
  concat:
    fadein: 2  # fade in over 2 seconds
    fadeout: 2 # fade out over 2 seconds
    inputs:
      - clip:
          file: a.mkv
          start: 1:20  # Start 1 minute 20 seconds in
          duration: 15 # Only take 15 seconds
      - clip:
          file: b.mkv
          speed: 2x # speed up video
          tempo: 2x # speed up audio
```

ffedit was largely written on a plane ride back from [Australia]({filename}/2018-australia.md)
and was used to edit the video from that trip (and subsequent trips.)
Before writing ffedit, I was using a BASH script / Makefile to invoke ffmpeg.
