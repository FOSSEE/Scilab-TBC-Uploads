//Example 4.5
//Program to determine Capacitance of Varactor Diode if the
//Reverse-Bias Voltage is increased from 4V to 8V 
clear;
clc ;
close ;
//Given Circuit Data
Ci=18*10^(-12);//i.e. 18 pF
Vi=4; //Volts
Vf=8; //Volts
//Calculation
K=Ci*sqrt(Vi);
Cf=K/sqrt(Vf);
//Displaying The Results in Command Window
printf("\n\t The Final Value of Capacitance is C = %f pF .",Cf/10^(-12));