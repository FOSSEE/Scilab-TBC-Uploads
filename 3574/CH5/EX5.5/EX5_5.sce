// Example 5.5
// Computation of minimum value of (a) Shaft speed (b) Rotor current referred 
// to the stator
// Page No. 187

clc;
clear;
close;

// Given data
f=60;               // Frequency in Hz
p=12;               // Number of poles
nr=591.1;           // Rated speed of machine
v=575;              // Voltage rating of the machine
R2=0.055;

// (a) Shaft speed
ns=120*f/p;        // Speed (r/min)
s1=(ns-nr)/ns;     // Slip 1
s2=1.25*s1;        // Slip 2
nr1=ns*(1-s2);

// (b) Rotor current referred to the stator
V=v/sqrt(3);
I2=V*s2/R2;

// Display result on command window
printf("\n Shaft speed = %0.0f r/min ",nr1);
printf("\n Rotor current referred to the stator = %0.0f A ",I2);

