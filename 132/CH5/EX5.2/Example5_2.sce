//Example 5.2
//Program to Determine Dynamic Input Resistance of the Transistor at //the point: Ie=0.5 mA and Vcb= -10 V.
clear;
clc ;
close ;
//From the Input Characteristics 
dIe=(0.7-0.3)*10^(-3); //A
dVeb=(0.7-0.62); //V
//Calculation
ri=dVeb/dIe; //Dynamic Input Resistance at Vcb= -10 V 
//Displaying The Results in Command Window
printf("\n\t The Dynamic Input Resistance is ri= %f Ohms .",ri);