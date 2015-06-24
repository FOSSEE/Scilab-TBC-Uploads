//Example 8.4
//Program to find the Voltage Gain of the Amplifier
clear;
clc ;
close ;
//Given Circuit Data
u=20;
Rl=10*10^3; //Ohms
rp=10*10^3; //Ohms
//Calculation
A=u*Rl/(rp+Rl);
//Displaying The Results in Command Window
printf("\n\t The Voltage Gain of the Amplifier is A = %f with phase of 180 degrees .",A);