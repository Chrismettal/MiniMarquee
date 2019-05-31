# MiniMarquee v0.2

---

## What is this?
Small marquees for standalone decoration with backlit signs, including output for up to 25 W of RGB LED strip.

Might be used for multiple consoles to have the specific sign and indirect strip lighting light up with the console.

---

## Capabilities

At the moment 10 light scenes can be hardcoded including static light ones and fading between up to 4 colors. The amount of light scenes and their values can be modified in the source. The same light scenes will be used for the backlight and the RGB strip output, but the two "zones" can be individually set to display a different scene to enable a contrast between the sign and indirect lighting. A single button steps through the light scenes for the specific zones. The current light scene is always saved in EEPROM to stay persistent between power cycles.

---

### DIY

All the files are open source. The gerber files as well as the KiCAD project files can be found to get the PCBs made. Alternatively you can just write me. 

The case as well as all the signs need to be 3d printed. For the signs at least a 2-color extruder is required. I print all the parts in PETG because of the selection of transparent materials.

Soldering requires some SMD capabilities.

You don't need to change anything in the source if you are fine with the preconfigured lightscenes.
All light scenes are hardcoded in the **LightSceneEvaluation()** function. See the commented examples to make your own scenes.
I used [PlatformIO](https://platformio.org/) on Visual Studio Code for programming. You could upload the code with the Arduino IDE but i recommend giving PlatformIO a try as you won't have to deal with the libraries etc. yourself.
An ICSP programmer is required to upload code to the board. I used a cheap UsbTiny device but you could use an *Arduino as ISP* for example.

A detailed building guide can be found **HERE IN THE FUTURE**

---

## Power

The device can be powered directly by a 12 V DC power supply. In my usecase the "master" device that controls the power to the individual consoles also switches on/off the power to the marquees, but you could power the marquees directly from the console using DC-DC converters to make the marquee always switch on with the console. 

---

## Versions

The current PCB version is v0.2.
The source code **WILL BE** made to be adaptable to both v0.2 and v0.1 PCBs to use with the old revision of the PCB. By default v0.2 is defined in the software. You will have to uncomment the "#define_v0_1" to use the code with the old PCB

---

## Signs made

Designed signs vs. signs to design

- [ ]  NES
- [ ]  SNES
- [ ]  N64
- [ ]  GC
- [ ]  Wii
- [ ]  WiiU
- [ ]  Switch
- [ ]  PS1
- [ ]  PS2
- [ ]  PS3
- [x]  PS4
- [ ]  Xbox Classic
- [ ]  Xbox 360
- [ ]  Xbox One
- [ ]  Master System
- [ ]  Megadrive
- [ ]  Genesis
- [ ]  Saturn
- [ ]  Dreamcast
- [ ]  Atari 2600
- [ ]  Jaguar

---

## Lightscenes

List of standard lightscenes

- 1
- 2
- 3
- 4
- 5
- 6
- 7
- 8
- 9
- Off

---

## Controls

- Button short click    --> Next lightscene in current light zone
- Button double click   --> Previous lightscene in current light zone
- Button long click     --> Switch between which light zone to change

The device can just be switched on and off by cutting the power to it. It will remember its lightscenes for the next boot.