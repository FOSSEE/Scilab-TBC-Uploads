//Example 8.2 (b)
//Program to find the Voltage Gain of the Amplifier
clear;
clc ;
close ;
//Given Circuit Data
Beeta=100;
ri=2*10^3; //Ohms
Rac=5*10^3; //Ohms
//Calculation
Av=Beeta*Rac/ri;
//Displaying The Results in Command Window
printf("\n\t The Voltage Gain of the Amplifier is Av = %f with phase of 180 degrees .",Av);