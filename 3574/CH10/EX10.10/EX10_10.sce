// Example 10.10
// Computation of (a) Mechanical power developed (b) Torque developed 
// (c) Shaft torque
// Page No.427

clc;
clear;
close;

// Given data
T=40;                  // Hp rating of motor
Rf=95.3;               // Field resistance
VT=240;                // Rated voltade of the machine
IT=140;                // Total current
Racir=0.0873;          // Armature circuit resistance
n=2500;                // Rated speed of the machine


// (a) The mechanical power developed

If=VT/Rf;               // Field winding current
Ia1=IT-If;              // Armature current
Ea=VT-Ia1*Racir;        // Armature emf
Pmech=Ea*Ia1;           // Mechanical power
Pmechhp=Ea*Ia1/746;

// (b) Torque developed

TD=7.04*Ea*Ia1/n;

// (c) Shaft torque

Tshaft=T*5252/n;

// Display result on command window
printf("\n Mechanical power developed= %0.0f W ",Pmech);
printf("\n Mechanical power developed= %0.1f hp ",Pmechhp);
printf("\n Torque developed = %0.1f lb-ft ",TD);
printf("\n Shaft torque = %0.1f lb-ft ",Tshaft);




