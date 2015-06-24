//Chapter 4
//Example 4-2
//ProbOnLowerThresholdVoltage 
//Page 91
clear;clc;
//Given
Vsat = -13;//Saturation Voltage
R1 = 1000; R2 = 100 ; //Load resistances
Vlt = (R2/(R1*R2))*Vsat;
printf("\n\n Value of Lower Threshold Voltage =  %.6f V \n\n",Vlt)