//Example 10.1
//Program to Determine the Transformer Turns Ratio
clear;
clc ;
close ;
//Given Circuit Data
RL=16;// Ohms
RLd=10*10^3;// Ohms
//Calculation
N12=sqrt(RLd/RL);//N12=N1/N2
//Displaying The Results in Command Window
printf("\n\t The Transformer Turns Ratio is N1/N2 = %d:%d .",N12,1);