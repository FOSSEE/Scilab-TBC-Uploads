//Example 5.3
//Program to Determine Short Circuit Current Gain of the Transistor
clear;
clc ;
close ;
//Given Data 
dIe=1*10^(-3); //A
dIc=0.99*10^(-3); //A
//Calculation
hfb=dIc/dIe; //Short Circuit Current Gain
//Displaying The Results in Command Window
printf("\n\t The Short Circuit Current Gain is alpha or hfb= %f .",hfb);