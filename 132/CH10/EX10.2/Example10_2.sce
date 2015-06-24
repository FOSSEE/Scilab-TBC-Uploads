//Example 10.2
//Program to Determine the Effective Resistance seen looking into 
//the Primary
clear;
clc ;
close ;
//Given Circuit Data
Rl=8; //Ohms
N12=15; //N12=N1/N2
//Calculation
Rld=(N12)^2*Rl;
//Displaying The Results in Command Window
printf("\n\t The Effective Resistance seen looking into the Primary, Rld = %f kOhms .",Rld/10^3);