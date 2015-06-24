//Chapter 4
//Example 4-1
//ProbOnThresholdVoltage 
//Page 90
clear;clc;
//Given
Vsat = 14;//Saturation Voltage
R1 = 1000; R2 = 100 ; //Load resistances
Vut = (R2/(R1*R2))*Vsat;
printf("\n\n Value of Upper Threshold Voltage =  %.6f V \n\n",Vut)