// Example 4.5
// Computation of (a) Shaft speed (b) Mechanical power developed
// (c) Developed torque
// Page No. 152

clc;
clear;
close;

// Given data
Prcl=263;               // Rotor copper loss
Pgap=14580;             // Power input to the rotor
fs=60;                  // Frequency
p=4;                    // Number of poles



// (a) Shaft speed
s=Prcl/Pgap;               // Slip
ns=120*fs/p;               // Speed of stator
nr=ns*(1-s);               // Speed of shaft

// (b) Mechanical power developed
Pmech=Pgap-Prcl;                  // Mechanical power developed
Pmechhp=Pmech/746;                // Mechanical power developed in hp

//(c) Developed torque
TD=5252*Pmechhp/nr;


// Display result on command window
printf("\n Shaft speed = %0.1f r/min ",nr);
printf("\n Mechanical power developed in hp = %0.2f hp ",Pmechhp);
printf("\n Developed torque = %0.1f lb-ft ",TD);
