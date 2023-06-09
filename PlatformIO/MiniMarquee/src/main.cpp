//https://github.com/Chrismettal/MiniMarquee


//Version controlling, uncomment to use the older v0.1 PCB revision
//#define PCB_v0_1

#include <Arduino.h>
#include <OneButton.h>
#include <EEPROM.h>

//Depending on PCB rev the analog outputs are either done with hardware PWM on v0.2 (analogWrite())
//or with software PWM on v0.1 (SoftPwmSet())
//This ifdef statement will replace all occurences of AnalogOut with the correct outputting function
#ifdef PCB_v0_1
  #include <SoftPWM.h>
  #define AnalogOut SoftPWMset
#else
  #define AnalogOut analogWrite
#endif

/****************************Variables*********************************/
#ifdef PCB_v0_1
//pin assignments for v0.1 with soft pwm
  const byte pin_z0_R      = 3;
  const byte pin_z0_G      = 4;
  const byte pin_z0_B      = 2;
  const byte pin_z1_R      = 5;
  const byte pin_z1_G      = 6;
  const byte pin_z1_B      = 7;
#else
//pin assignments for v0.2 without softpwm required
  const byte pin_z0_R      = 9;
  const byte pin_z0_G      = 10;
  const byte pin_z0_B      = 11;
  const byte pin_z1_R      = 5;
  const byte pin_z1_G      = 6;
  const byte pin_z1_B      = 3;
#endif
#define buttonPin A0

//RGB analog values
byte val_z0_R = 0;
byte val_z0_G = 0;
byte val_z0_B = 0;
byte val_z1_R = 0;
byte val_z1_G = 0;
byte val_z1_B = 0;

//RGB analog values to be mapped to output pin
byte out_val_z0_R = 0;
byte out_val_z0_G = 0;
byte out_val_z0_B = 0;
byte out_val_z1_R = 0;
byte out_val_z1_G = 0;
byte out_val_z1_B = 0;

//button variables
int longPressDuration         = 1000; //long press duration in ms
int doubleClickduration       = 500;  //double click duration in ms
OneButton button(buttonPin, true);    //attach OneButton to defined buttonPin

//light scene variables
bool activeLightZone  = 0;  //Switch between Zone 0 (internal) and Zone 1 (external)
byte lightScene_Zone0 = 1;  //active light scene in zone 0 
byte lightScene_Zone1 = 1;  //active light scene in zone 1
byte eeprom_addr_z0   = 0;  //eeprom space to save the light scene in zone 0
byte eeprom_addr_z1   = 1;  //eeprom space to save the light scene in zone 1

//light update timer variables
unsigned long lastUpdateTime      = 0;      //last time the output was updated
const byte updateIntervalms       = 5;     //update interval in ms
unsigned long lastFadeTime_slow   = 0;      //last time a fade light scene was updated in zone 0
unsigned long lastFadeTime_fast   = 0;      //last time a fade light scene was updated in zone 1
byte iFade_slow                   = 0;      //fading counter 0-255 zone 0
byte iFade_fast                   = 0;      //fading counter 0-255 zone 1
bool fadeDirection_slow           = 0;      //fading direction of zone 0
bool fadeDirection_fast           = 0;      //fading direction of zone 1
const byte fadeIntervalms_slow    = 50;     //fade interval slow fade | sets the speed of the slow fading scenes
const byte fadeIntervalms_fast    = 2;      //fade interval fast fade | sets the speed of the fast fading scenes

//other variables
unsigned long now = 0; //saves current milliseconds every loop cycle


/****************************Evaluate light scenes***********************/
void LightSceneEvaluation() {
  //Here you can set your own light scenes.
  //Zone0 is internal backlight
  switch (lightScene_Zone0) {
    case 1: //Red
      val_z0_R = 255;
      val_z0_G = 0;
      val_z0_B = 0;
    break;

    case 2: //Green
      val_z0_R = 0;
      val_z0_G = 255;
      val_z0_B = 0;
    break;

    case 3: //Blue
      val_z0_R = 0;
      val_z0_G = 0;
      val_z0_B = 255;
    break;

    case 4: //Sky Blue
      val_z0_R = 135;
      val_z0_G = 206;
      val_z0_B = 250;
    break;
    
    case 5: //Warm white
      val_z0_R = 255;
      val_z0_G = 239;
      val_z0_B = 210;
    break;

    case 6: //Cold white
      val_z0_R = 240;
      val_z0_G = 240;
      val_z0_B = 255;
    break;

    case 7: //Yellow
      val_z0_R = 255;
      val_z0_G = 255;
      val_z0_B = 0;
    break;

    case 8: //Orange 
      val_z0_R = 255;
      val_z0_G = 165;
      val_z0_B = 0;
    break;

    case 9: //Purple
      val_z0_R = 160;
      val_z0_G = 32;
      val_z0_B = 240;
    break;

    case 10: //Olive
      val_z0_R = 0;
      val_z0_G = 100;
      val_z0_B = 51;
    break;

    case 11: //Fade Red - Green slow
      val_z0_R = iFade_slow;
      val_z0_G = 255-iFade_slow;
      val_z0_B = 0;     
      out_val_z0_R = val_z0_R;
      out_val_z0_G = val_z0_G;
      out_val_z0_B = val_z0_B;
    break;
    
    case 12: //Fade Green - Blue slow
      val_z0_R = 0;
      val_z0_G = iFade_slow;
      val_z0_B = 255-iFade_slow;     
      out_val_z0_R = val_z0_R;
      out_val_z0_G = val_z0_G;
      out_val_z0_B = val_z0_B;
    break;

    case 13: //Fade Red - Blue slow
      val_z0_R = iFade_slow;
      val_z0_G = 0;
      val_z0_B = 255-iFade_slow;     
      out_val_z0_R = val_z0_R;
      out_val_z0_G = val_z0_G;
      out_val_z0_B = val_z0_B;
    break;

    case 14: //Fade Yellow - Blue slow
      val_z0_R = iFade_slow;
      val_z0_G = iFade_slow;
      val_z0_B = 255-iFade_slow;     
      out_val_z0_R = val_z0_R;
      out_val_z0_G = val_z0_G;
      out_val_z0_B = val_z0_B;
    break;

    case 15: //Breathing White
      val_z0_R = iFade_slow;
      val_z0_G = iFade_slow;
      val_z0_B = iFade_slow;     
      out_val_z0_R = val_z0_R;
      out_val_z0_G = val_z0_G;
      out_val_z0_B = val_z0_B;
    break;
  }

  //Zone1 is external RGB LED strip
  switch (lightScene_Zone1) {
    case 1: //Red
      val_z1_R = 255;
      val_z1_G = 0;
      val_z1_B = 0;
    break;

    case 2: //Green
      val_z1_R = 0;
      val_z1_G = 255;
      val_z1_B = 0;
    break;

    case 3: //Blue
      val_z1_R = 0;
      val_z1_G = 0;
      val_z1_B = 255;
    break;

    case 4: //Sky Blue
      val_z1_R = 135;
      val_z1_G = 206;
      val_z1_B = 250;
    break;
    
    case 5: //Warm white
      val_z1_R = 255;
      val_z1_G = 239;
      val_z1_B = 210;
    break;

    case 6: //Cold white
      val_z1_R = 240;
      val_z1_G = 240;
      val_z1_B = 255;
    break;

    case 7: //Yellow
      val_z1_R = 255;
      val_z1_G = 255;
      val_z1_B = 0;
    break;

    case 8: //Orange 
      val_z1_R = 255;
      val_z1_G = 165;
      val_z1_B = 0;
    break;

    case 9: //Purple
      val_z1_R = 160;
      val_z1_G = 32;
      val_z1_B = 240;
    break;

    case 10: //Olive
      val_z1_R = 0;
      val_z1_G = 100;
      val_z1_B = 51;
    break;

    case 11: //Fade Red - Green slow
      val_z1_R = iFade_slow;
      val_z1_G = 255-iFade_slow;
      val_z1_B = 0;     
      out_val_z1_R = val_z1_R;
      out_val_z1_G = val_z1_G;
      out_val_z1_B = val_z1_B;
    break;
    
    case 12: //Fade Green - Blue slow
      val_z1_R = 0;
      val_z1_G = iFade_slow;
      val_z1_B = 255-iFade_slow;     
      out_val_z1_R = val_z1_R;
      out_val_z1_G = val_z1_G;
      out_val_z1_B = val_z1_B;
    break;

    case 13: //Fade Red - Blue slow
      val_z1_R = iFade_slow;
      val_z1_G = 0;
      val_z1_B = 255-iFade_slow;     
      out_val_z1_R = val_z1_R;
      out_val_z1_G = val_z1_G;
      out_val_z1_B = val_z1_B;
    break;

    case 14: //Fade Yellow - Blue slow
      val_z1_R = iFade_slow;
      val_z1_G = iFade_slow;
      val_z1_B = 255-iFade_slow;     
      out_val_z1_R = val_z1_R;
      out_val_z1_G = val_z1_G;
      out_val_z1_B = val_z1_B;
    break;

    case 15: //Breathing White
      val_z1_R = iFade_slow;
      val_z1_G = iFade_slow;
      val_z1_B = iFade_slow;     
      out_val_z1_R = val_z1_R;
      out_val_z1_G = val_z1_G;
      out_val_z1_B = val_z1_B;
    break;

  }//end light scenes

}//end LightSceneEvaluation

/****************************Boot animation*****************************/
void BootAnimation() {
  //Quick boot animation
  for (byte i = 0; i < 255; i++) {
    AnalogOut(pin_z0_R, i);
    AnalogOut(pin_z1_G, i);
    delay(1);
  }
  for (byte i = 0; i < 255; i++) {
    AnalogOut(pin_z0_R, (255-i));
    AnalogOut(pin_z1_G, (255-i));
    AnalogOut(pin_z0_G, i);
    AnalogOut(pin_z1_B, i);
    delay(1);
  }
  for (byte i = 0; i < 255; i++) {
    AnalogOut(pin_z0_G, (255-i));
    AnalogOut(pin_z1_B, (255-i));
    AnalogOut(pin_z0_B, i);
    AnalogOut(pin_z1_R, i);
    delay(1);
  }
  for (byte i = 255; i > 0; i--) {
    AnalogOut(pin_z0_B, i);
    AnalogOut(pin_z1_R, i);
    delay(1);
  }
}//end bootanimation

/****************************next lightscene***************************/
void NextLightScene() {

  if (activeLightZone == 0){
    lightScene_Zone0++;
    if (lightScene_Zone0 == 16){
      lightScene_Zone0 = 1;
    }
    //permanently save light scene for rebooting
    EEPROM.write(eeprom_addr_z0, lightScene_Zone0);
  }
  if (activeLightZone == 1){
    lightScene_Zone1++;
    if (lightScene_Zone1 == 16){
      lightScene_Zone1 = 1;
    }
    //permanently save light scene for rebooting
    EEPROM.write(eeprom_addr_z1, lightScene_Zone1);
  }
}//end NextLightScene

/****************************previous lightscene*************************/
void PrevLightScene() {

  if (activeLightZone == 0){
    lightScene_Zone0--;
    if (lightScene_Zone0 == 0){
      lightScene_Zone0 = 15;
    }
    //permanently save light scene for rebooting
    EEPROM.write(eeprom_addr_z0, lightScene_Zone0);
  }
  if (activeLightZone == 1){
    lightScene_Zone1--;
    if (lightScene_Zone1 == 0){
      lightScene_Zone1 = 15;
    }
    //permanently save light scene for rebooting
    EEPROM.write(eeprom_addr_z1, lightScene_Zone1);
  }
}//end NextLightScene

/****************************Change active zone*************************/
void changeActiveZone() {
  //switch the active light zone
  if (activeLightZone == 0){

    activeLightZone = 1;

    //zone 1 animation
    for (byte i = 0; i < 255; i++) {
      AnalogOut(pin_z1_R, i);
      delayMicroseconds(500);
    }
    for (byte i = 0; i < 255; i++) {
      AnalogOut(pin_z1_G, i);
      delayMicroseconds(500);
    }
    for (byte i = 0; i < 255; i++) {
      AnalogOut(pin_z1_B, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i < 0; i--) {
      AnalogOut(pin_z1_R, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i > 0; i--) {
      AnalogOut(pin_z1_G, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i > 0; i--) {
      AnalogOut(pin_z1_B, i);
      delayMicroseconds(500);
    }

  } else {

    activeLightZone = 0;

    //zone 0 animation
    for (byte i = 0; i < 255; i++) {
      AnalogOut(pin_z0_R, i);
      delayMicroseconds(500);
    }
    for (byte i = 0; i < 255; i++) {
      AnalogOut(pin_z0_G, i);
      delayMicroseconds(500);
    }
    for (byte i = 0; i < 255; i++) {
      AnalogOut(pin_z0_B, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i < 0; i--) {
      AnalogOut(pin_z0_R, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i > 0; i--) {
      AnalogOut(pin_z0_G, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i > 0; i--) {
      AnalogOut(pin_z0_B, i);
      delayMicroseconds(500);
    }

  }
}//end NextLightScene

/*********************************Setup*********************************/
void setup() {
  //pin setup
  pinMode(pin_z0_R, OUTPUT);
  pinMode(pin_z0_G, OUTPUT);
  pinMode(pin_z0_B, OUTPUT);
  pinMode(pin_z1_R, OUTPUT);
  pinMode(pin_z1_G, OUTPUT);
  pinMode(pin_z1_B, OUTPUT);
  pinMode(buttonPin, INPUT_PULLUP);

  button.attachClick(NextLightScene);
  button.attachDoubleClick(PrevLightScene);
  button.attachLongPressStop(changeActiveZone);
  button.setClickTicks(doubleClickduration);
  button.setPressTicks(longPressDuration);

  //start software PWM for old PCB rev
  #ifdef PCB_v0_1
    SoftPWMBegin();
  #endif

  AnalogOut(pin_z0_R, 0);
  AnalogOut(pin_z0_G, 0);
  AnalogOut(pin_z0_B, 0);
  AnalogOut(pin_z1_R, 0);
  AnalogOut(pin_z1_G, 0);
  AnalogOut(pin_z1_B, 0);

  //bootup animation
  BootAnimation();

  //read EEPROM for saved light scenes
  if(EEPROM.read(eeprom_addr_z0) > 0 && EEPROM.read(eeprom_addr_z0) < 16) {
    lightScene_Zone0 = EEPROM.read(eeprom_addr_z0);
  }
  if(EEPROM.read(eeprom_addr_z1) > 0 && EEPROM.read(eeprom_addr_z1) < 16) {
    lightScene_Zone1 = EEPROM.read(eeprom_addr_z1);
  }

}//end setup

/****************************Loop*********************************/
void loop() {
  //button evaluation
  button.tick();

  now = millis();

  //imitation of for-loops that count from 0 to 255 and back in defined intervals
  //for changing light scenes
  if ( (lastFadeTime_slow + fadeIntervalms_slow) < now ) {
    lastFadeTime_slow = now;
    if(fadeDirection_slow == 0) iFade_slow++; else iFade_slow--;
    if((iFade_slow == 255) | (iFade_slow == 0)) fadeDirection_slow = !fadeDirection_slow;             
  }
  if ( (lastFadeTime_fast + fadeIntervalms_fast) < now ) {
    lastFadeTime_fast = now;
    if(fadeDirection_fast == 0) iFade_fast++; else iFade_fast--;
    if((iFade_fast == 255) | (iFade_fast == 0)) fadeDirection_fast = !fadeDirection_fast;             
  }

  //lightscene evaluation
  LightSceneEvaluation();
  
  //update outputs in specified interval
  if ( (lastUpdateTime + updateIntervalms) < now ) {
    
    //save current time for next interval
    lastUpdateTime = now;

    //fade to new value before outputting
    if (out_val_z0_R < val_z0_R) out_val_z0_R++;
    if (out_val_z0_G < val_z0_G) out_val_z0_G++;
    if (out_val_z0_B < val_z0_B) out_val_z0_B++;
    if (out_val_z1_R < val_z1_R) out_val_z1_R++;
    if (out_val_z1_G < val_z1_G) out_val_z1_G++;
    if (out_val_z1_B < val_z1_B) out_val_z1_B++;
    if (out_val_z0_R > val_z0_R) out_val_z0_R--;
    if (out_val_z0_G > val_z0_G) out_val_z0_G--;
    if (out_val_z0_B > val_z0_B) out_val_z0_B--;
    if (out_val_z1_R > val_z1_R) out_val_z1_R--;
    if (out_val_z1_G > val_z1_G) out_val_z1_G--;
    if (out_val_z1_B > val_z1_B) out_val_z1_B--;

    //Output values to analog pins
    AnalogOut(pin_z0_R, out_val_z0_R);
    AnalogOut(pin_z0_G, out_val_z0_G);
    AnalogOut(pin_z0_B, out_val_z0_B);
    AnalogOut(pin_z1_R, out_val_z1_R);
    AnalogOut(pin_z1_G, out_val_z1_G);
    AnalogOut(pin_z1_B, out_val_z1_B);

  }//end update interval

}//end Loop
