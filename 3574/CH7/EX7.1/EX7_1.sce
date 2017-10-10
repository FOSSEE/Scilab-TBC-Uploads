// Example 7.1
// Determine (a) Torque load on the shaft (b) Torque angle if the voltage 
// drops to 224V (c) Will the rotor pull out of synchronism?
// Page No. 282

clc;
clear;
close;

// Given data
f=60;                 // Frequency
P=4;                  // Number of poles
Pshaft=10;            // Shaft power in hp
V1=240;               // Rated voltage
V2=224;               // New voltage
phirel1=30;           // Torque angle


// (a) Torque load on the shaft
ns=120*f/P;            // speed of machine
Trel=Pshaft*5252/ns;


// (b) Torque angle if the voltage drops to 224V
phirel2=asind((V1^2/V2^2)*sind(2*phirel1))/2

// Display result on command window
printf("\n Torque load on the shaft = %0.2f  lb-ft ",Trel);
printf("\n Torque angle if the voltage drops to 224V = %0.2f deg ",phirel2);
printf("\n Because torque angle is less than 45 degree, \n the rotor will not pull out of synchronism ")

