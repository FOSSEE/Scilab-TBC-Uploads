// Chapter7
// Page.No-296
// Example_7_17_a
// Nominal frequency
// Given
clear;clc;
R2=1.5*10^3;
R1=10*10^3;
R3=10*10^3;
C1=0.001*10^-6;
V=12; // Supply voltage
Vc=R3*V/(R2+R3); // Using voltage divider rule
printf("\n Terminal voltage Vc is = %.2f V \n",Vc) // Result
fo=2*(V-Vc)/(V*R1*C1);
printf("\n Approximate Nominal freq fo is = %.1f Hz \n",fo) // Result
