//Example 9.4 (a)
//Program to Calculate Input Impedance of the given 
//Two Stage RC Coupled Amplifier
clear;
clc ;
close ;
//Given Data
R1=5.6*10^3; //Ohms
R2=56*10^3; //Ohms
R3=1.1*10^3; //Ohms
//Calculation
Zi=R1*R2*R3/(R1*R2+R2*R3+R3*R1);
//Displaying The Results in Command Window
printf("\n\t The Input Impedance, Zi = %f kOhms ",Zi/10^3);