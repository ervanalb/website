Title: 2013 East Side Party
Date: 2013-08-25
Category: Projects
Tags: radiance, lights

My friend Zach and I put lights on the Rush Fort at the [East Side party](http://eastcamp.us{static}/media/albums/view.py?path=REX/2013) in August 2013.

[lux](https://github.com/ervanalb/lux) hardware powered all of the strips. Back then, it used CAN to send data to all of the light strips. Trying to get CAN to transmit reliably over long distances, especially when routed near noise sources like high power audio, was miserable. The difficulties encountered in 2013 led to replacing CAN with a speak-when-spoken-to half-duplex serial protocol (RS-422) which has been much more reliable.

[radiance](https://radiance.video) (back then it was called *beat-off*) to design patterns to show on them. It had manual tempo synchronization, and only a handful of pre-saved patterns. It was written in pygame and was much closer to the paradigm of seq24 than modern radiance (see 2012 section below.)

[![]({static}/media/lights/2013/thumbnails/_x320/lux_wiring.jpg)]({static}/media/lights/2013/lux_wiring.jpg "Some lux wiring")
[![]({static}/media/lights/2013/thumbnails/_x320/rush_fort_night.jpg)]({static}/media/lights/2013/rush_fort_night.jpg "Lights at night")
---BREAK---

[![]({static}/media/lights/2013/thumbnails/_x320/more_lux_wiring.jpg)]({static}/media/lights/2013/more_lux_wiring.jpg "More lux wiring")
[![]({static}/media/lights/2013/thumbnails/_x320/rush_fort_day.jpg)]({static}/media/lights/2013/rush_fort_day.jpg "Daytime lights")

## 2011

This was the second time I helped do lighting for the East Side party, and the first time using lux / radiance.
The first time was in 2012. I was working in San Francisco for the summer, and one of my fellow interns was sent to China
to do some manufacturing engineering. He came back with tons of cheap LED strips.

I threw together some control boards that took in MIDI control signals, and output patterns to the lights.
I also added a MIDI clock out feature to [MIXXX](https://mixxx.org), which my friend Gabe would be using to DJ the party.

The actual patterns were constructed using a MIDI keyboard and [seq24](http://www.filter24.org/seq24/) to "play" the lights.
Different notes corresponded to different colors, and different octaves were different effects.
The MIDI clock signal kept the sequencer in time with the music.

Overall, this party went very well, and while the size of the setup increased and technical improvements were made, the smoothness and successful execution of the operation wasn't matched until [2016]({static}/2016-east-side-party.md).
