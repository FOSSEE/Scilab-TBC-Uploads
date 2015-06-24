//Example 13.3
//Program to Calculate Frequency of Oscillation of 
//Wein Bridge Oscillator
clear;
clc ;
close ;
//Given Circuit Data
R1=220*10^3;// Ohms
R2=220*10^3;// Ohms
C1=250*10^(-12);//F
C2=250*10^(-12);//F
//Calculation
fo=1/(2*%pi*sqrt(R1*C1*R2*C2));
//Displaying The Results in Command Window
printf("\n\t The Frequency of Oscillation of Wein Bridge Oscillator is fo = %f kHz .",fo/10^3);