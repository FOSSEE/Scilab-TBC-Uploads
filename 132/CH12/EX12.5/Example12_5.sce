//Example 12.5
//Program to Calculate the value of Feedback Factor and Percentage //change in overall Gain of the Internal Amplifier
clear;
clc ;
close ;
//Given Circuit Data
A=1000; //60dB, Voltage Gain
Zo=12000; //Ohms
Zod=600; //Ohms
dAbyA=0.1; //dA/A = 10 %
//Calculation
B=((Zo/Zod)-1)/A; //Zod=Zo/(1+A*B)
dAfbyAf=1/(1+A*B)*dAbyA; //dAf/Af=1/(1+A*B)*dA/A
//Displaying The Results in Command Window
printf("\n\t The Feedback Factor of the Feedback Amplifier is, B = %f percent .",B*100);
printf("\n\t The change in overall Gain of the Feedback Amplifier is, dAf/Af = %f percent.",dAfbyAf*100);