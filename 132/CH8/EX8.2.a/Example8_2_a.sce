//Example 8.2 (a)
//Program to find the Input Impedance of the Amplifier
clear;
clc ;
close ;
//Given Circuit Data
ri=2*10^3; //Ohms
Rb=150*10^3; //Ohms
//Calculation
Zin=Rb*ri/(Rb+ri);
//Displaying The Results in Command Window
printf("\n\t The Input Impedance of the Amplifier is Zin = %f kOhms .",Zin/10^3);