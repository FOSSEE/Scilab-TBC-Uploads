// Example 5.12
// Determine the percent increase or decrease in rotor circuit resistance
// Page No. 202

clc;
clear;
close;

// Given data

Stdmax1=0.45;       // Maximum torque condition 1
Stdmax2=0.80;       // Maximum torque condition 2

// Percent increase or decrease in rotor circuit resistance

PerCh=1/(Stdmax1/Stdmax2);
PerCh=PerCh-1;

// Display result on command window
printf("\n Percent change in rotor circuit resistance = %0.0f Percent increase",PerCh*100);
