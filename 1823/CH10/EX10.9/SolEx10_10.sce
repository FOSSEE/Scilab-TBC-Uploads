//Determine (a) the output voltage, (b) the load resistance, and (c) the load current.
//Example 10.9 
//page no 298
clear
clc
V1=12
D=0.6
V2=V1/(1-D)     //output voltage
P0=60         //w Supplying power 
Rl=V2^2/P0       //load resistance
I2=V2/Rl         //load current
printf("\n The value of V2=%0.3f V ",V2)
printf("\n The value of Rl=%0.3f ohm",Rl)
printf("\n The value of I2=%0.3f A ",I2)
