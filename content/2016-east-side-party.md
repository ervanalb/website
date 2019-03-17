Title: 2016 East Side Party
Date: 2016-08-27
Category: Projects
Tags: radiance, lights, hardware, software

The 2016 East Side Party was lit using lux and VJ'd with Radiance. Sadun, Banti, and Farita put up the display and ran the lights during the party, with technical support from me and zbanks.

The display consisted of 480 feet of LED strip containing 4500 individually controlled lights and consuming around 900 watts of power.

[![]({static}/media/lights/2016/fort3.gif)]({static}/media/lights/2016/fort3.gif "Close-up of fort during the 2016 East Side party")
---BREAK---

## lux

[lux](https://github.com/ervanalb/lux) rev 8 was used for this party. There was a small production run (50 units) of rev 8. They worked very well, and it is likely that there will be additional production runs as more hardware is needed.

[![]({static}/media/lights/2016/thumbnails/_x320/light_board_front.jpg)]({static}/media/lights/2016/light_board_front.jpg "Front of lux LED strip driver")
[![]({static}/media/lights/2016/thumbnails/_x320/light_board_back.jpg)]({static}/media/lights/2016/light_board_back.jpg "Back of lux LED strip driver")
[![]({static}/media/lights/2016/bandsaw.gif)]({static}/media/lights/2016/bandsaw.gif "Cutting stock for heatsinks")
[![]({static}/media/lights/2016/milling.gif)]({static}/media/lights/2016/milling.gif "Milling heatsinks")
[![]({static}/media/lights/2016/lasercutter.gif)]({static}/media/lights/2016/lasercutter.gif "Laser cutting thermal pads")
[![]({static}/media/lights/2016/thumbnails/_x320/assembled_light_boards.jpg)]({static}/media/lights/2016/assembled_light_boards.jpg "Assembled lux LED strip drivers")

## Radiance

[Radiance](https://radiance.video) composites patterns written in GLSL to create music-reactive lighting effects.
This party is arguably the first use of "modern" radiance, implementing pattern composition and a single "intensity" slider.
However, it only had support for four decks of four single-input patterns each, and only two of those decks at a time could be overlaid using simple alpha-compositing
The success of Radiance at this party has led me to develop it into fully-featured [VJ](https://en.wikipedia.org/wiki/VJing) software. Regardless, many issues with the C / SDL version led to it being rewritten using the Qt application framework.

## The Party

[![]({static}/media/lights/2016/full_system_test.gif)]({static}/media/lights/2016/full_system_test.gif "Full system test before the party")
[![]({static}/media/lights/2016/thumbnails/_x320/lux_control_center.jpg)]({static}/media/lights/2016/lux_control_center.jpg "The lux control board")
[![]({static}/media/lights/2016/thumbnails/_x320/fort_lighting_test.jpg)]({static}/media/lights/2016/fort_lighting_test.jpg "Testing the display before the party")
[![]({static}/media/lights/2016/fort1.gif)]({static}/media/lights/2016/fort1.gif "Fort during the party")
[![]({static}/media/lights/2016/fort2.gif)]({static}/media/lights/2016/fort2.gif "Fort during the party")
[![]({static}/media/lights/2016/fort4.gif)]({static}/media/lights/2016/fort4.gif "Fort during the party")
