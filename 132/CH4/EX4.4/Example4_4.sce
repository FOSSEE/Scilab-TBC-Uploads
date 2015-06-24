//Example 4.4
//Program to determine Maximum Current the Given Zener Diode can handle
clear;
clc ;
close ;
//Given Circuit Data
Vz=9.1; //Volts
P=364*10^(-3); //Watts
//Calculation
Iz=P/Vz;
//Displaying The Results in Command Window
printf("\n\t The Maximum permissible Current is Iz(max) = %f mA .",Iz/10^(-3));