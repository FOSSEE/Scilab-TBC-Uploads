//Example 9.4 (b)
//Program to Calculate Output Impedance of the given 
//Two Stage RC Coupled Amplifier
clear;
clc ;
close ;
//Given Data
Ro1=3.3*10^3; //Ohms
Ro2=2.2*10^3; //Ohms
//Calculation
Zo=Ro1*Ro2/(Ro1+Ro2);
//Displaying The Results in Command Window
printf("\n\t The Output Impedance, Zo = %f kOhms ",Zo/10^3);