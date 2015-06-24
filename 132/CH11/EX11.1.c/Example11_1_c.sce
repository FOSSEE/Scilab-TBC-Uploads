//Example 11.1 (c)
//Program to Calculate the Current at Resonance of the given Circuit
clear;
clc ;
close ;
//Given Circuit Data
V=10; //V
C=300*10^(-12); //F
L=220*10^(-6); //H
R=20; //Ohms
//Calculation
I=V/R;
//Displaying The Results in Command Window
printf("\n\t The Current at Resonance, I = %f A .",I);