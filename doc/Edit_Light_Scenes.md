# Editing light scenes

All lightscenes are done in `LightSceneEvaluation()`

Every scene is stored in the switch/case statement of its specific light zone, ordered by their scene number.
For example the static lightscene 1 in lightzone 0 (first color setting of the internal backlight) is done like this:

```c
  switch (lightScene_Zone0) {
    case 1:
      val_z0_R = 255;
      val_z0_G = 0;
      val_z0_B = 0;
    break;
```

Every value is set to a number between 0 and 255, where 255 represents the maximum output brightness.
Mixing different brightness levels of the R G and B output values allows you to set any color you want.

2 color fading is done like in this case lightscene 4:

```c
    case 4:
      //example 2 color fade between green and blue using the iFade sweeping counter
      //out_val is also used here to overwrite the global fading
      val_z0_R = 0;
      val_z0_G = iFade_fast;
      val_z0_B = 255-iFade_fast;     
      out_val_z0_R = 0;
      out_val_z0_G = iFade_fast;
      out_val_z0_B = 255-iFade_fast;
    break;
```
The two variables `iFade_fast` and `iFade_slow` fade between 0 and 255 all the time. You can do any calculation you want with them to output various animations. Just be sure to write your values to `val_xx_R` and `out_val_xx_R` at the same time to overwrite the global fading.