// Example 5.1
// Computation of minimum value of (a) Locked rotor torque (b) Breakdown torque
// (c) Pull up torque
// Page No. 173

clc;
clear;
close;

// Given data
f=60;               // Frequency in Hz
p=6;                // Number of poles
hp=10;              // Horsepower
n=1150;             // Rated speed of machine
ns=120*f/p;


// (a) Locked rotor torque
Trated=hp*5252/n;   // Rated torque 
Tlockedrotor=2.25*Trated;

// (b) Breakdown torque
Tbreakdown=1.90*Trated;

// (c) Pull up torque
Tpullup=1.65*Trated;


// Display result on command window
printf("\n Locked rotor torque = %0.1f lb-ft ",Tlockedrotor);
printf("\n Breakdown torque = %0.1f lb-ft ",Tbreakdown);
printf("\n Pull up torque = %0.1f  lb-ft",Tpullup);
