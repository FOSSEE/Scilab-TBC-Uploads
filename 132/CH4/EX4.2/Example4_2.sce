//Example 4.2
//Program to determine DC Voltage across the load and PIV of the 
//Centre Tap Rectifier and Bridge Rectifier
clear;
clc ;
close ;
//Given Circuit Data
Vrms=220; //Volts
n2=1; //Assumption
n1=12*n2; //Turns Ratio
//Calculation
Vp=sqrt(2)*Vrms;//Maximum(Peak) Primary Voltage
Vm=n2*Vp/n1;//Maximum Secondary Voltage
Vdc=2*Vm/%pi;//DC load Voltage 
//Displaying The Results in Command Window
printf("\n\t The DC load Voltage is = %f V .",Vdc);
printf("\n\t The Peak Inverse Voltage(PIV) of Bridge Rectifier is = %f V .",Vm);
printf("\n\t The Peak Inverse Voltage(PIV) of Centre-tap Rectifier is = %f V .",2*Vm);