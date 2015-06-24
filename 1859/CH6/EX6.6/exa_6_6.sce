// Exa 6.6
clc;
clear;
close;
// Given data
resistor= 5000;// in ohm
LVR1= resistor-resistor*0.1/100;// Limiting value of 5000 ohm resistor in negative error
LVR2= resistor+resistor*0.1/100; //Limiting value of 5000 ohm resistor in positve error
disp("Limiting value of 5000 ohm resistance is "+string(LVR1)+" ohm to "+string(LVR2)+" ohm")
disp("Thus dials of 1000 , 100 , 10 and 1 ohm would to be adjusted");

