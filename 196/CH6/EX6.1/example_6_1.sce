//Chapter 6
//Example 6-1
//ProbOnThresholdVoltage 
//Page 149,151, Figure 6-1 
clear;clc;
//Given
R1 = 100*10^3 ;
R2 = 86*10^3 ;
Vsatp = 15 ; Vsatm = -15 ;//Saturation voltages
Vut = (R2 * Vsatp)/(R1 + R2);
Vlt = (R2 * Vsatm)/(R1 + R2);
printf ( "\n\n Upper Threshold Voltage = %.4f V ", Vut )
printf ( "\n\n Lower Threshold Voltage = %.4f V ", Vlt )