//Example 11.1 (b)
//Program to Calculate Impedance at Resonance of the given Circuit
clear;
clc ;
close ;
//Given Circuit Data
C=300*10^(-12); //F
L=220*10^(-6); //H
R=20; //Ohms
//Calculation
Rr=R;
//Displaying The Results in Command Window
printf("\n\t The Impedance at Resonance, Rr = %f Ohms .",Rr);