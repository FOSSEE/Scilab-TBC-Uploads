//Example 5.4(b)
//Program to Determine Common Emitter Short Circuit Current Gain (beeta)
//of the Transistor
clear;
clc ;
close ;
//Given Data 
dIe=1*10^(-3); //A
dIc=0.995*10^(-3); //A
//Calculation
alpha=dIc/dIe; //Common Base Short Circuit Current Gain
beeta=alpha/(1-alpha); //Common Emitter Short Circuit Current Gain
//Displaying The Results in Command Window
printf("\n\t The Common Emitter Short Circuit Current Gain is beeta= %f .",beeta);