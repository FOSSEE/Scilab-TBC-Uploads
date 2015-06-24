//Example 13.1
//Program to Calculate Frequency of Oscillation of 
//Tuned Collector Oscillator
clear;
clc ;
close ;
//Given Circuit Data
L=58.6*10^(-6);// H
C=300*10^(-12);// F
//Calculation
fo=1/(2*%pi*sqrt(L*C));
//Displaying The Results in Command Window
printf("\n\t The Frequency of Oscillation of Tuned Collector Oscillator is fo = %f kHz .",fo/10^3);