//Example 8.3 (b)
//Program to find the Input Impedance of the Amplifier
clear;
clc ;
close ;
//Given Circuit Data
rin=2*10^3; //Ohms
R3=75*10^3; //Ohms
R4=7.5*10^3; //Ohms
//Calculation
Zin=R3*R4*rin/(R3*R4+R4*rin+rin*R3);
//Displaying The Results in Command Window
printf("\n\t The Input Impedance of the Amplifier is Zin = %f kOhms .",Zin/10^3);