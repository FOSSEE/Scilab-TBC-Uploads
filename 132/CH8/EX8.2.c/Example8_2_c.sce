//Example 8.2 (c)
//Program to find the Current Gain of the Amplifier
clear;
clc ;
close ;
//Given Circuit Data
//Let input Current ib=2A
ib=2 ; //A, Assumption
io=100*ib ;
//Calculation
Ai=io/ib; // Current Gain
//Displaying The Results in Command Window
printf("\n\t The Current Gain of the Amplifier is Ai = %f .",Ai);