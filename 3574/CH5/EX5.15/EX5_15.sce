// Example 5.15
// Determine the machine parameters in ohms
// Page No. 213

clc;
clear;
close;

// Given data
V=460;             // Motor voltage
hp=50;             // Motor horsepower
r1=0.021;          // Resistance
r2=0.020;
x1=0.100;          // Reactance
x2=0.0178;
rfe=20;           
Xm=3.68;           // Motor reactance

// Machine parameters in ohms
Vbase=V/sqrt(3);         // Base voltage
Pbase=hp*746/3;          // Base power
Zbase=Vbase^2/Pbase;     // Base impedance

R1=r1*Zbase;
X1=x1*Zbase;
R2=r2*Zbase;
X2=x2*Zbase;
Rfe=rfe*Zbase;
XM=Xm*Zbase;

// Display result on command window
printf("\n Motor resistance 1 = %0.3f Ohm",R1);
printf("\n Motor reactance 1 = %0.3f Ohm",X1);
printf("\n Motor resistance 2 = %0.3f Ohm",R2);
printf("\n Motor reactance 2 = %0.3f Ohm",X2);
printf("\n Field resistance = %0.2f Ohm",Rfe);
printf("\n Reactance of motor = %0.2f Ohm",XM);

