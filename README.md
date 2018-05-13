# Week 2
## The Inebriator
The Inebriator is a machine for automatic bartending.The console runs on a .NETMF Fez Panda II, storing all information of cocktail. When the console starts to work, a glass slides on the rails automatically and accurately. There are several bottles of cocktail on the top of the machine. The glass moves to the bottom of the specific bottles, and the cocktail goes down to the glass. And then, a glass of cocktail is finished. 
URL:http://www.theinebriator.com/
## Photocells
Photocell is a sensor which can detect lights. Photocell is a kind of resistor changed by the light shining onto the squiggly face. But it is inaccurate, which means it should not be used to determine the precise light level.
## Force Sensitive Resistor(FSR)
FSR can detect physical pressure, squeezing and weight. It is basically a kind of resistor that the resistive value is changed by how much it is pressed. But it is rarely accurate. So it is not a good choice to use it to detect exact pressure. 
## Tilt Sensor
Tilt sensor allow you to detect orientation or inclination. It is made by a cavity and a conductive free mass inside, which is slideable. The resistive value is determined by the position of the mass, and it is why the tilt sensor can detect the orientation.

# Week 3
## Concept
The touch board is a platform to tap different objects. The speaker will play a sound of one object, when the object is tapped or hands is closed to it. The objects and their sounds are various. 
## Programm
The force sensor (conductive paint) detects the change of force, and the speaker works.
## Sketch
![image](https://github.com/lingyindu/Digital-Electronics-/blob/master/pic/IMG_2919.PNG)
Reference
![image](https://s-media-cache-ak0.pinimg.com/originals/df/05/6a/df056a1806dfaf9e59a67cc3f3a3a75f.jpg)


# week 7
## Sketch
![image](https://github.com/lingyindu/Digital-Electronics-/blob/master/pic/IMG_2919.PNG)


picture of the first iteration
video of your working project (upload to YouTube and post a link)
## Code 
// Name the pin as led. 
#define speaker 11

// Set the Send Pin & Receive Pin.
CapacitiveSensor   cs_2_3 = CapacitiveSensor(2,3);       
CapacitiveSensor   cs_2_4 = CapacitiveSensor(2,4);        
CapacitiveSensor   cs_2_5 = CapacitiveSensor(2,5);        
CapacitiveSensor   cs_2_6 = CapacitiveSensor(2,6);        
CapacitiveSensor   cs_2_7 = CapacitiveSensor(2,7);        
CapacitiveSensor   cs_2_8 = CapacitiveSensor(2,8);        
CapacitiveSensor   cs_2_9 = CapacitiveSensor(2,9);        
CapacitiveSensor   cs_2_10 = CapacitiveSensor(2,10);  


void setup()                    
{
  cs_2_3.set_CS_AutocaL_Millis(0xFFFFFFFF);     // turn off autocalibrate on channel 1 - just as an example
  
  // Arduino start communicate with computer.
  Serial.begin(9600);
}

void loop()                    
{
  // Set a timer.
  long start = millis();
  
  // Set the sensitivity of the sensors.
  long total1 =  cs_2_3.capacitiveSensor(50);
  long total2 =  cs_2_4.capacitiveSensor(50);
  long total3 =  cs_2_5.capacitiveSensor(50);
  long total4 =  cs_2_6.capacitiveSensor(50);
  long total5 =  cs_2_7.capacitiveSensor(50);
  long total6 =  cs_2_8.capacitiveSensor(50);
  long total7 =  cs_2_9.capacitiveSensor(50);
  long total8 =  cs_2_10.capacitiveSensor(50);
  

//Serial.print("Time since start in milliseconds - ");    
//  Serial.print(millis() - start);        // check on performance in milliseconds
//  Serial.print("\t");                    // tab character for debug windown spacing

  Serial.print(total1);                  
  Serial.print("\t");                    
  Serial.print("\t");                    
  Serial.print(total3);                  
  Serial.print("\t");                    
  Serial.print(total4);                  
  Serial.print("\t");                   
  Serial.print(total5);                  
  Serial.print("\t");                    
  Serial.print(total6);                  
  Serial.print("\t");                    
  Serial.println(total7);  
  Serial.print("\t");  
  Serial.println(total8);                
                                         // "println" - "ln" represent as "line", system will jump to next line after print the output.                                       // "println" - "ln" represent as "line", system will jump to next line after print the output.
                                         
  
  
  
  
  // When hand is touched the sensor, the speaker will produce a tone.
  // I set a threshold for it, so that the sensor won't be too sensitive.
  if (total1 > 150) tone(speaker,523*2);
  if (total2 > 150) tone(speaker,587*2);
  if (total3 > 150) tone(speaker,659*2);
  if (total4 > 150) tone(speaker,698*2);
  if (total5 > 150) tone(speaker,784*2);
  if (total6 > 150) tone(speaker,880*2);
  if (total7 > 150) tone(speaker,988*2);
  if (total8 > 150) tone(speaker,1060*2);
  
  // When hand didn't touch on it, no tone is produced.
  if (total1<=150  &  total2<=150  &  total3<=150 & total4<=150  &  total5<=150  &  total6<=150 &  total7<=150&  total8<=150)
    noTone(speaker);

  delay(5);                             // arbitrary delay to limit data to serial port 
}



## Schematic 
![image](https://github.com/lingyindu/Digital-Electronics-/blob/master/pic/1.png)
## Concept proposal for my final project
Based on initial work, turn the voice into piano sounds and add some visual things by processing. Try to adjust volume and switch the sounds into different instruments, such as violin, flute, etc.

# Final document

## The goal of project
To make a different experience with playing piano. There is no traditional piano keys on the board. People play piano with touching rather than squeezing. Besides, users get interesting feedback when playing piano in order to make it fun to do.
Bouncing balls on the screen motivate people to engage in this experience.

## How achieves that goal
Use capacitive sensor as a touch point. If the sensor is touched, arduino will print a letter as a serial number. Then send serial number to processing.

## Accurate schematic
![image](https://github.com/lingyindu/Digital-Electronics-/blob/master/pic/schematic.png)

## Parts of list
Processing (talk with Arduino)
Capacitive sensors
Conductive paint
Piano keyboard



