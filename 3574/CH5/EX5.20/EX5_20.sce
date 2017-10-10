// Example 5.20
// Computation of (a) Resistance of the resistors required to limit the locked 
// rotor current to 3 times rated current (b) Stator voltage per phase at 
// locked rotor (c) Expected minimum locked rotor torque when starting as a 
// percent of rated torque
// Page No. 235

clc;
clear all;
close;

// Given data
Ilr=3*78;                 // Locked rotor current
Vbranch=132.79;           // Branch voltage
Rlr=0.2549;               //Locked rotor resistance
Xlr=0.0978;               //Locked rotor impedance
f=60;                     //Frequency of motor 
Zlr=0.273;

// (a) Resistance of the resistors required to limit the locked rotor current 
// to 3 times rated current
Rex=sqrt((Vbranch^2/Ilr^2)-(Rlr^2))-Xlr;

// (b) Stator voltage per phase at locked rotor 
IZlr=Ilr*Zlr;
VT1_N=IZlr;

// (c) Expected minimum locked rotor torque when starting as a percent of 
// rated torque
// From table 5.1 --> Minimum locked rotor torque = 150% rated torque

// Display result on command window

printf("\n Resistance of the resistors required = %0.4f Ohm ",Rex);
printf("\n Stator voltage per phase at locked rotor = %0.2f V ",VT1_N);
disp('Expected minimum locked rotor torque = 1.5 Trated');


