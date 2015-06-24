//Example 13.2
//Program to Calculate Frequency of Oscillation of 
//Vacuum Tube Phase Shift Oscillator
clear;
clc ;
close ;
//Given Circuit Data
R=100*10^3;// Ohms
C=0.01*10^(-6);//F
//Calculation
fo=1/(2*%pi*R*C*sqrt(6));
//Displaying The Results in Command Window
printf("\n\t The Frequency of Oscillation of Vacuum Tube Phase Shift Oscillator is fo = %f Hz .",fo);