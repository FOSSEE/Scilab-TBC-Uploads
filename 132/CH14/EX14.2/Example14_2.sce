//Example 14.2
//Program to Determine the Shunt Resistance required 
clear;
clc ;
close ;
//Given Circuit Data
Rm=100; //Ohms
CS=100*10^(-6); //A
Imax=10*10^(-3); //A
//Calculation
Ish=Imax-CS;
Rsh=Rm*CS/Ish;
//Displaying The Results in Command Window
printf("\n\t The Value of Shunt Resistance is, Rsh = %f Ohms .",Rsh);