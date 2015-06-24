//Example 9.1
//Program to Calculate overall Voltage Gain of a Multistage 
//Amplifier in dB
clear;
clc ;
close ;
//Given Data
A1=30;
A2=50;
A3=80;
//Calculation
A=A1*A2*A3; //Voltage Gain
Adb=20*log10(A); //Voltage Gain in dB
//Displaying The Results in Command Window
printf("\n\t The overall Voltage Gain of the Multistage Amplifier Adb = %f dB",Adb);