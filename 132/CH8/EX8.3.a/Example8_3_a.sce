//Example 8.3 (a)
//Program to find the Voltage Gain of the Amplifier
clear;
clc ;
close ;
//Given Circuit Data
Bac=150;
rin=2*10^3; //Ohms
R1=4.7*10^3; //Ohms
R2=12*10^3; //Ohms
//Calculation
Rac=R1*R2/(R1+R2);
Av=Bac*Rac/rin;
//Displaying The Results in Command Window
printf("\n\t The Voltage Gain of the Amplifier is Av = %f with phase of 180 degrees .",Av);