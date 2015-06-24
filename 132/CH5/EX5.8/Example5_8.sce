//Example 5.8
//Program to Calculate Dynamic Drain Resistance of JFET
clear;
clc ;
close ;
//Given Data 
u=80; // Amplification Factor
gm=200*10^(-6); // S, Transconductance
//Calculation
rd=u/gm; //Dynamic Drain Resistance
//Displaying The Results in Command Window
printf("\n\t The Dynamic Drain Resistance of JFET is rd= %f kOhms.",rd/10^(3));