clear//

//Variables 

RL = 8.0                   //Load resistance (in ohm)
VP = 16.0                  //Peak output voltage (in volts)

//Calculation

P = VP**2 / (2 * RL)       //Power drawn from the source (in watt)  

//Result

printf("\n The power drawn from the source is  %0.3f  W.",P)
