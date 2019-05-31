#include <Arduino.h>
#include <OneButton.h>
#include <SoftPWM.h>
#include <EEPROM.h>

/****************************Variables*********************************/
//pin assignments
const byte pin_z0_R      = 3;
const byte pin_z0_G      = 4;
const byte pin_z0_B      = 2;
const byte pin_z1_R      = 5;
const byte pin_z1_G      = 6;
const byte pin_z1_B      = 7;
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
int doubleClickduration       = 300;  //double click duration in ms
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
const byte fadeIntervalms_fast    = 1;      //fade interval fast fade | sets the speed of the fast fading scenes

//other variables
unsigned long now = 0; //saves current milliseconds every loop cycle


/****************************Evaluate light scenes***********************/
void LightSceneEvaluation() {
  //Here you can set your own light scenes.
  switch (lightScene_Zone0) {
    case 1:
      val_z0_R = 255;
      val_z0_G = 0;
      val_z0_B = 0;
    break;

    case 2:
      val_z0_R = 0;
      val_z0_G = 255;
      val_z0_B = 0;
    break;

    case 3:
      val_z0_R = 0;
      val_z0_G = 0;
      val_z0_B = 255;
    break;

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
    
    case 5:
      val_z0_R = 255;
      val_z0_G = 0;
      val_z0_B = 255;
    break;

    case 6:
      val_z0_R = 0;
      val_z0_G = 255;
      val_z0_B = 255;
    break;

    case 7:
      val_z0_R = 255;
      val_z0_G = 255;
      val_z0_B = 255;
    break;

    case 8:
      val_z0_R = 255;
      val_z0_G = 125;
      val_z0_B = 0;
    break;

    case 9:
      val_z0_R = 255;
      val_z0_G = 125;
      val_z0_B = 125;
    break;

    case 10:
      val_z0_R = 30;
      val_z0_G = 30;
      val_z0_B = 200;
    break;

  }
  switch (lightScene_Zone1) {
    case 1:
      val_z1_R = 255;
      val_z1_G = 0;
      val_z1_B = 0;
    break;

    case 2:
      val_z1_R = 0;
      val_z1_G = 255;
      val_z1_B = 0;
    break;

    case 3:
      val_z1_R = 0;
      val_z1_G = 0;
      val_z1_B = 255;
    break;

    case 4:
      //example 2 color fade between blue and green using the iFade sweeping counter  
      //out_val is also used here to overwrite the global fading
      val_z1_R = 0;
      val_z1_B = iFade_fast;
      val_z1_G = 255-iFade_fast;
      out_val_z1_R = 0;
      out_val_z1_B = iFade_fast;
      out_val_z1_G = 255-iFade_fast;
    break;

    case 5:
      val_z1_R = 255;
      val_z1_G = 0;
      val_z1_B = 255;
    break;

    case 6:
      val_z1_R = 0;
      val_z1_G = 255;
      val_z1_B = 255;
    break;

    case 7:
      val_z1_R = 255;
      val_z1_G = 255;
      val_z1_B = 255;
    break;

    case 8:
      val_z1_R = 255;
      val_z1_G = 125;
      val_z1_B = 0;
    break;

    case 9:
      val_z1_R = 255;
      val_z1_G = 125;
      val_z1_B = 125;
    break;

    case 10:
      val_z1_R = 30;
      val_z1_G = 30;
      val_z1_B = 200;
    break;

  }//end switches

}//end LightSceneEvaluation

/****************************Boot animation*****************************/
void BootAnimation() {
  //rapidly fade through the main colors
  for (byte i = 0; i < 255; i++) {
    SoftPWMSet(pin_z0_R, i);
    SoftPWMSet(pin_z1_G, i);
    delayMicroseconds(500);
  }
  for (byte i = 255; i > 0; i--) {
    SoftPWMSet(pin_z0_R, i);
    SoftPWMSet(pin_z1_G, i);
    delayMicroseconds(500);
  }
  for (byte i = 0; i < 255; i++) {
    SoftPWMSet(pin_z0_G, i);
    SoftPWMSet(pin_z1_B, i);
    delayMicroseconds(500);
  }
  for (byte i = 255; i > 0; i--) {
    SoftPWMSet(pin_z0_G, i);
    SoftPWMSet(pin_z1_B, i);
    delayMicroseconds(500);
  }
  for (byte i = 0; i < 255; i++) {
    SoftPWMSet(pin_z0_B, i);
    SoftPWMSet(pin_z1_R, i);
    delayMicroseconds(500);
  }
  for (byte i = 255; i > 0; i--) {
    SoftPWMSet(pin_z0_B, i);
    SoftPWMSet(pin_z1_R, i);
    delayMicroseconds(500);
  }
}//end bootanimation

/****************************next lightscene***************************/
void NextLightScene() {

  if (activeLightZone == 0){
    lightScene_Zone0++;
    if (lightScene_Zone0 == 11){
      lightScene_Zone0 = 1;
    }
    //permanently save light scene for rebooting
    EEPROM.write(eeprom_addr_z0, lightScene_Zone0);
  }
  if (activeLightZone == 1){
    lightScene_Zone1++;
    if (lightScene_Zone1 == 11){
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
      lightScene_Zone0 = 10;
    }
    //permanently save light scene for rebooting
    EEPROM.write(eeprom_addr_z0, lightScene_Zone0);
  }
  if (activeLightZone == 1){
    lightScene_Zone1--;
    if (lightScene_Zone1 == 0){
      lightScene_Zone1 = 10;
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
      SoftPWMSet(pin_z1_R, i);
      delayMicroseconds(500);
    }
    for (byte i = 0; i < 255; i++) {
      SoftPWMSet(pin_z1_G, i);
      delayMicroseconds(500);
    }
    for (byte i = 0; i < 255; i++) {
      SoftPWMSet(pin_z1_B, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i < 0; i--) {
      SoftPWMSet(pin_z1_R, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i > 0; i--) {
      SoftPWMSet(pin_z1_G, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i > 0; i--) {
      SoftPWMSet(pin_z1_B, i);
      delayMicroseconds(500);
    }

  } else {

    activeLightZone = 0;

    //zone 1 animation
    for (byte i = 0; i < 255; i++) {
      SoftPWMSet(pin_z0_R, i);
      delayMicroseconds(500);
    }
    for (byte i = 0; i < 255; i++) {
      SoftPWMSet(pin_z0_G, i);
      delayMicroseconds(500);
    }
    for (byte i = 0; i < 255; i++) {
      SoftPWMSet(pin_z0_B, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i < 0; i--) {
      SoftPWMSet(pin_z0_R, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i > 0; i--) {
      SoftPWMSet(pin_z0_G, i);
      delayMicroseconds(500);
    }
    for (byte i = 255; i > 0; i--) {
      SoftPWMSet(pin_z0_B, i);
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

  SoftPWMBegin();
  SoftPWMSet(pin_z0_R, 0);
  SoftPWMSet(pin_z0_G, 0);
  SoftPWMSet(pin_z0_B, 0);
  SoftPWMSet(pin_z1_R, 0);
  SoftPWMSet(pin_z1_G, 0);
  SoftPWMSet(pin_z1_B, 0);

  //bootup animation
  BootAnimation();

  //read eeprom for saved light scenes
  if(EEPROM.read(eeprom_addr_z0) > 0 && EEPROM.read(eeprom_addr_z0) < 11) {
    lightScene_Zone0 = EEPROM.read(eeprom_addr_z0);
  }
  if(EEPROM.read(eeprom_addr_z1) > 0 && EEPROM.read(eeprom_addr_z1) < 11) {
    lightScene_Zone0 = EEPROM.read(eeprom_addr_z1);
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
    SoftPWMSet(pin_z0_R, out_val_z0_R);
    SoftPWMSet(pin_z0_G, out_val_z0_G);
    SoftPWMSet(pin_z0_B, out_val_z0_B);
    SoftPWMSet(pin_z1_R, out_val_z1_R);
    SoftPWMSet(pin_z1_G, out_val_z1_G);
    SoftPWMSet(pin_z1_B, out_val_z1_B);

  }//end interval

}//end Loop