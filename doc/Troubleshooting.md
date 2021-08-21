# Troubleshooting

## Nothing happens when I turn the power on

- Is the AVR flashed correctly?
- Is the AVR getting 5v?
- Are all solder joints nice?


## The light works but it's flickering hard and fading slow

- The fusebits of the AVR are not set correctly. It is using the internal oscillator rather than the external 16MHz crystal. Burn the Arduino Bootloader and reflash the firmware or manually set the fusebits like an arduino pro mini 168.


##  One or more of the colors don't work

- Check solder connections from the AVR to the RV_ resistors of the specific color. The mosfet sometimes does not solder great when doing reflow soldering.


## One or more of the LEDs don't work

- Check solder connections of all LEDs. It's sometimes easy to overlook a bad connection there.


## My tantalum caps exploded

- You probably switched the polarity of the caps. Remove the dead caps. The device will probably run without them but it's not exactly recommended.


## My LDO released the smoke

- You probably have a short circuit in the 5V rail. This can happen easily on the lower side of the AVR as 5V and GND are right next to each other and bridges on the QFP are hard to see with the naked eye.
