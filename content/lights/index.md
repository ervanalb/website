% Lights

<p class="images">
[![](/media/lights/2016/fort3.gif)](/media/lights/2016/fort3.gif "Close-up of fort during the 2016 East Side party")
</p>

I really like creating light shows. I have been slowly improving on a system for synchronizing lights to music for many years. There are two main problems with creating a good light show. The first is the technical challenges of delivering power and data to many different units. The second is the artistic component: how do you create an interface which allows a human to synthesize patterns as effortlessly as possible?

## lux

*lux* aims to solve the technical problems. You can find it written up on Github [here](https://github.com/ervanalb/lux).

*lux* is currently in rev 8. There was a small production run (50 units) of rev 8. These units were used at the [East Side party](http://eastcamp.us/media/albums/view.py?path=REX/2013) in August 2016 (link is to 2013.) They worked very well, and it is likely that there will be additional production runs as more hardware is needed.

<p class="images">
[![](/media/lights/2016/light_board_front_thumb.jpg)](/media/lights/2016/light_board_front.jpg "Front of lux LED strip driver")
[![](/media/lights/2016/light_board_back_thumb.jpg)](/media/lights/2016/light_board_back.jpg "Back of lux LED strip driver")
[![](/media/lights/2016/bandsaw.gif)](/media/lights/2016/bandsaw.gif "Cutting stock for heatsinks")
[![](/media/lights/2016/milling.gif)](/media/lights/2016/milling.gif "Milling heatsinks")
[![](/media/lights/2016/lasercutter.gif)](/media/lights/2016/lasercutter.gif "Laser cutting thermal pads")
[![](/media/lights/2016/assembled_light_boards_thumb.jpg)](/media/lights/2016/assembled_light_boards.jpg "Assembled lux LED strip drivers")
</p>

## Radiance

*Radiance* aims to solve the human interface problems. You can find it on Github [here](https://github.com/zbanks/radiance). Radiance composites patterns written in GLSL to create music-reactive lighting effects. Radiance has the potential to become fully-featured [VJ](https://en.wikipedia.org/wiki/VJing) software.

Due to many issues with the C / SDL version, Radiance is currently being rewritten using the Qt application framework.

## 2016 East Side Party

The 2016 East Side Party was lit using lux and VJ'd with Radiance. Sadun, Banti, and Farita put up the display and ran the lights during the party, with technical support from me and zbanks.

The display consisted of 480 feet of LED strip containing 4500 individually controlled lights and consuming around 900 watts of power.

<p class="images">
[![](/media/lights/2016/full_system_test.gif)](/media/lights/2016/full_system_test.gif "Full system test before the party")
[![](/media/lights/2016/lux_control_center_thumb.jpg)](/media/lights/2016/lux_control_center.jpg "The lux control board")
[![](/media/lights/2016/fort_lighting_test_thumb.jpg)](/media/lights/2016/fort_lighting_test.jpg "Testing the display before the party")
[![](/media/lights/2016/fort1.gif)](/media/lights/2016/fort1.gif "Fort during the party")
[![](/media/lights/2016/fort2.gif)](/media/lights/2016/fort2.gif "Fort during the party")
[![](/media/lights/2016/fort4.gif)](/media/lights/2016/fort4.gif "Fort during the party")
</p>

## 2012 East Side Party

<p class="images">
[![](/media/lights/2013/lux_wiring_thumb.jpg)](/media/lights/2013/lux_wiring.jpg "Some lux wiring")
[![](/media/lights/2013/more_lux_wiring_thumb.jpg)](/media/lights/2013/more_lux_wiring.jpg "More lux wiring")
[![](/media/lights/2013/rush_fort_day_thumb.jpg)](/media/lights/2013/rush_fort_day.jpg "Daytime lights")
[![](/media/lights/2013/rush_fort_night_thumb.jpg)](/media/lights/2013/rush_fort_night.jpg "Lights at night")
</p>
