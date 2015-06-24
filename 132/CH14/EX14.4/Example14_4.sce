//Example 14.4
//Program to Determine the AC Voltage 
clear;
clc ;
close ;
//Given Circuit Data
DS=5; //V/cm, Deflection Sensitivity
l=10; //cm, Trace Length
//Calculation
Vp=DS*l;
Vm=Vp/2;
V=Vm/sqrt(2);
//Displaying The Results in Command Window
printf("\n\t The Peak AC Voltage, Vm = %f V .",Vm);
printf("\n\t The RMS AC Voltage, V = %f V .",V);