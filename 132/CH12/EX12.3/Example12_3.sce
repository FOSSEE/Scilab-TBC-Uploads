//Example 12.3
//Program to Calculate the change in overall Gain of the Feedback //Amplifier with given Gain reduction
clear;
clc ;
close ;
//Given Circuit Data
A=1000; //60dB, Voltage Gain
B=0.005; //Negative Feedback
dAbyA=-0.12; //dA/A = 12 %
//Calculation
dAfbyAf=1/(1+A*B)*dAbyA; //dAf/Af=1/(1+A*B)*dA/A
//Displaying The Results in Command Window
printf("\n\t The change in overall Gain of the Feedback Amplifier is, dAf/Af = %f which is equivalent to %f percent.",dAfbyAf,dAfbyAf*-100);