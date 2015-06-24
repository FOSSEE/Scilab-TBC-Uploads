//Example 12.4
//Program to Calculate the Input Impedance of the Feedback Amplifier //with given Specifications
clear;
clc ;
close ;
//Given Circuit Data
Zi=1*10^3; //Ohms
A=1000; //Voltage Gain
B=0.01; //Negative Feedback
//Calculation
Zid=(1+A*B)*Zi;
//Displaying The Results in Command Window
printf("\n\t The Value of the Input Impedance of the Feedback Amplifier is, Zid = %f kOhms.",Zid/10^3);