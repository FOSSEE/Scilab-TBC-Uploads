// Chapter7
// Page.No-296
// Example_7_17_b
// Modulation in output frequency
// Given
clear;clc;
R2=1.5*10^3;
R1=10*10^3;
R3=10*10^3;
C1=0.001*10^-6;
V=12; // Supply voltage
Vc1=9.5;
Vc2=11.5;
fo1=2*(V-Vc1)/(V*R1*C1);
printf("\n Approximate Nominal freq fo1 is = %.1f Hz \n",fo1) // Result
fo2=2*(V-Vc2)/(V*R1*C1);
printf("\n Approximate Nominal freq fo2 is = %.1f Hz \n",fo2) // Result
delta_fo=fo1-fo2; // Change in output freq
printf("\n Change in output freq delta_fo is = %.1f Hz \n",delta_fo) // Result