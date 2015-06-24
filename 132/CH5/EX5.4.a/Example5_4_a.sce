//Example 5.4(a)
//Program to Determine Common Base Short Circuit Current Gain (alpha)
//of the Transistor
clear;
clc ;
close ;
//Given Data 
dIe=1*10^(-3); //A
dIc=0.995*10^(-3); //A
//Calculation
alpha=dIc/dIe; //Common Base Short Circuit Current Gain
//Displaying The Results in Command Window
printf("\n\t The Common Base Short Circuit Current Gain is alpha= %f .",alpha);