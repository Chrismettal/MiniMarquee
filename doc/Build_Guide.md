# Build Guide <!-- omit in toc -->

![opened](/images/Open.jpg)


## The parts

First take a look at the [BOM](/doc/MiniMarquee_v0.2_BOM.ods).

The only part that is not defined by a specific number or footprint is the DC barrel jack. You might have to look around a bit but you will surely find chinese stores selling this typical cheap type of jack.

![dc jack](/images/DC_Jack.jpg)

When you are looking for the SMD RGB LEDs it helps to check for ones with a datasheet attached to instantly know the exact pinout of the chip you are ordering as there is no real standard for that, or at least no one adheres to them.

The [schematic](/doc/MiniMarquee_v0.2_Schematic.pdf) is made for my specific pinout of LEDs. Should your pinout be different be sure to switch around the RV_X resistors as for example the red LED requires a higher RV than the other colors.

You can either write me for the PCB or get one made yourself from the [Gerber files](/doc/MiniMarquee_v0.2_Gerber.zip).


## The build

### Use this picture to see how the components get placed
![placemap](/images/PCB_placemap.png)

### Start by placing the Atmega168, AMS1117 and all FDN337.
![Manual2](/images/Manual2.jpg)

### The crystal should be placed now as it can be somewhat tight between C3 and C4.
![Manual3](/images/Manual3.jpg)

### Now all the resistors and ceramic capacitors go into place. Be sure to have checked the correct RV values and placement for your specific LEDs.
![Manual4](/images/Manual4.jpg)

### After that place the two tantalum capacitors, making sure of the correct orientation.
![Manual5](/images/Manual5.jpg)

### The last SMD parts that get placed are the LEDs themselves.
![Manual6](/images/Manual6.jpg)

### Now you can put in the buttons and the pin headers you want. The RST button is optional and gets left out here.
![Manual7](/images/Manual7.jpg)

### To get the alignment of the DC barrel jack right it's advisable to mount it to the case and mount the PCB over it, before soldering the contacts to the board. Otherwise your alignment can be off and you can damage the board or the case when tightening the jack to the case.
![Manual8](/images/Manual8.jpg)

### You PCB is finished and ready to get some source code! And yes, i noticed the missing solder joints before firing it up.
![Manual9](/images/Manual9.jpg)


## Uploading code

Uploading code is best done over the ICSP header. Get yourself your favourite ICSP uploader ready. I used some kind of USBtiny device, but you can use your [Arduino as ISP](https://www.arduino.cc/en/Tutorial/ArduinoISP) should you not have any other programmer at hand.

Don't forget that you will need to write the correct fusebits to the AVR. The easiest way of doing this is to fire up the Arduino IDE and "burn the bootloader" to the AVR  after setting the Arduino IDE "board" to "Arduino Pro Mini Atmega 168" as if you were to use it as an Arduino device before flashing the actual code to it.

I made the project in [PlatformIO](https://platformio.org/) so if you open the [PlatformIO project folder](https://github.com/Chrismettal/MiniMarquee/tree/master/PlatformIO/MiniMarquee) in PlatformIO you will automatically get the required libraries downloaded for you. The project is automatically configured to upload via the first found USBtiny device. Refer to PlatformIO documentation yourself for your specific uploading method.

You could also copy and paste the sourcecode into the ArduinoIDE if you are more comfortable uploading from there, but you will need to import the required libraries yourself.


## The case

The case is 3D printed. In my case i use PETG for all parts as it has the biggest library of transparent colors available and is relatively cheap.
The case does not need supports as it has build in support structure, but might need a little knife trimming around said supports. Get the print fan on full blast for the bridging part.

The diffusor part is just one layer thin and should be printed in white. You can optionally snap it in the case to get a smoother light output and not see the individual LEDs.

![alt](/images/diffusor.jpg)

The front panels are easily swappable and just get pushed in from the side of the case. They are just friction fit. To print these you will need a multi material capable printer. The only single color front panel is the diffusor which you can print in white or transparent to put your own stickers on them, but it won't be as bright as completely transparent color printing.


## The finale

Put everything together and plug in your 12 V DC power supply. If you did everything right all LEDs should play a little animation and light up in your configured light scene 1 in both zones.