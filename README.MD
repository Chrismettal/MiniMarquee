![alt text](https://github.com/Chrismettal/MiniMarquee/blob/master/images/Logo.png "MiniMarqueev0.2Logo")

## What is this

Small marquees for standalone decoration with backlit signs, including output for up to 25 W of RGB LED strip.

Might be used for multiple consoles to have the specific sign and indirect strip lighting light up with the console.

![alt text](https://github.com/Chrismettal/MiniMarquee/blob/master/images/Finished.gif)

## Capabilities

At the moment 15 light scenes can be hardcoded including static light ones and fading between 2 colors. More complex fades can be accomplished at will with any number of calculations with the iFade variables. The amount of light scenes and their values can be modified in the source. The same light scenes will be used for the backlight and the RGB strip output, but the two "zones" can be individually set to display a different scene to enable a contrast between the sign and indirect lighting. A single button steps through the light scenes for the specific zones. The current light scene is always saved in EEPROM to stay persistent between power cycles.

![alt text](https://github.com/Chrismettal/MiniMarquee/blob/master/images/Output.jpg)

## DIY

**Be sure to jump straight to the [Wiki](https://github.com/Chrismettal/MiniMarquee/wiki) for detailed build instructions**

All the files are open source. The gerber files as well as the KiCAD project files can be found to get the PCBs made. Alternatively you can just write me. 

The case as well as all the signs need to be 3d printed. For the signs at least a 2-color extruder is required. I print all the parts in PETG because of the selection of transparent materials. The lowermost part i print in white for case internal reflections but if you only have a dual extruder setup you can print the lower and upper parts both in black and the actual logo in your color of choice.

Soldering requires some SMD capabilities. The QFP32 chip is the hardest but with a bit of flux is actually quite doable.

You don't need to change anything in the source if you are fine with the preconfigured lightscenes.
All light scenes are hardcoded in the **LightSceneEvaluation()** function. See the commented examples to make your own scenes. ALso check out the [light scene documentation](https://github.com/Chrismettal/MiniMarquee/wiki/Editing-lightscenes).
I used [PlatformIO](https://platformio.org/) on Visual Studio Code for programming. You could upload the code with the Arduino IDE but i recommend giving PlatformIO a try as you won't have to deal with the libraries etc. yourself.
An ICSP programmer is required to upload code to the board. I used a cheap UsbTiny device but you could use an *Arduino as ISP* for example.

A detailed building guide can be found [here](https://github.com/Chrismettal/MiniMarquee/wiki/Build-guide).

![alt text](https://github.com/Chrismettal/MiniMarquee/blob/master/images/Open.jpg)

## Power

The device can be powered directly by a 12 V DC power supply. In my usecase the "master" device that controls the power to the individual consoles also switches on/off the power to the marquees, but you could power the marquees directly from the console using DC-DC converters to make the marquee always switch on with the console. 

## Versions

The current PCB version is v0.2.
The source code is made to be adaptable to both v0.2 and v0.1 PCBs to use with the old revision of the PCB. By default v0.2 is defined in the software. You will have to uncomment the "#define PCB_v0_1" to use the code with the old v0.1 PCB version, should you happen to get your hands on one.

## Signs

![alt text](https://github.com/Chrismettal/MiniMarquee/blob/master/images/sliced.png)

This is an example of some of the designed signs. I am still in the process of printing out every one of them so i don't yet have pictures of all signs ready.

I also uploaded the "RawSign" files in the 3d printable folder so you can design your own signs. Be sure to reupload them either as a remix on [The Thingiverse page](https://www.thingiverse.com/thing:3683055) or somewhere else where i can feed them back into here.

Here is a list of the already made signs:

- [ ]  Nintendo
- [x]  NES
- [x]  SNES
- [x]  N64
- [x]  GC
- [x]  Wii
- [x]  WiiU
- [x]  Switch
- [x]  PS1
- [x]  PS2
- [x]  PS3
- [x]  PS4
- [x]  Xbox Classic
- [x]  Xbox 360
- [x]  Xbox One
- [ ]  Sega
- [x]  Master System
- [x]  Genesis
- [ ]  Megadrive
- [x]  Dreamcast
- [x]  Atari 2600
- [x]  NeoGeo
- [x]  Commodore
- [ ]  PC Engine
- [ ]  Turbografx 16
- [x]  Diffuse plate for stickers

## Controls

- Button short click    --> Next lightscene in current light zone
- Button double click   --> Previous lightscene in current light zone
- Button long click     --> Switch between which light zone to change

The device can just be switched on and off by cutting the power to it. It will remember its lightscenes for the next boot.

## Scenes

For now 15 lightscenes are precoded:

- Red
- Green
- Blue
- Sky Blue
- Warm white
- Cold white
- Yelow
- Orange
- Purple
- Olive
- Slow fade between Red and Green
- Slow fade between Green and Blue
- Slow fade between Blue and Red
- Slow fade between Yellow and Blue
- Breathing white

For not the Scenes are the same for internal and external lightzone but they don't have to be, should you want to change that.
