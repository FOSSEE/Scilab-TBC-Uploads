//Example 11.1 (a)
//Program to Calculate Resonant Frequency of the given Circuit
clear;
clc ;
close ;
//Given Circuit Data
C=300*10^(-12); //F
L=220*10^(-6); //H
R=20; //Ohms
//Calculation
fr=1/(2*%pi*sqrt(L*C));
//Displaying The Results in Command Window
printf("\n\t The Resonant Frequency, fr = %f kHz .",fr/10^3);