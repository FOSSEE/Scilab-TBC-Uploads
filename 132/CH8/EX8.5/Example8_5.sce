//Example 8.5
//Program to find the Gain of the Amplifier
clear;
clc ;
close ;
//Given Circuit Data
gm=3000*10^(-6); //S
Rl=22*10^3; //Ohms
rp=300*10^3; //Ohms
//Calculation
//A=-(gm*Rl/(1+(Rl/rp))), For rp>>Rl we get
A=gm*Rl; //with Phase of 180 degrees
//Displaying The Results in Command Window
printf("\n\t The Gain of the Amplifier is A = %f with phase of 180 degrees .",A);