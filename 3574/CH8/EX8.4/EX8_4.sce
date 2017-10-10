// Example 8.4
// Determine (a) Developed torque if the field current is adjusted so that the
// excitation voltage is equal to two times the applied stator voltage, and the
// power angle is -18 degrees (b) Developed torque in percent of rated torque, 
// if the load is increased until maximum reluctance torque occurs.
// Page No. 328

clc; 
clear;
close;

// Given data
Vt1ph=2300/sqrt(3);         // Applied voltage/phase
Ef1ph=2300/sqrt(3);         // Excitation voltage/phase
Xd=36.66;                   // Direct axis reactance/phase
delta=-18;                  // Power angle
Xq=23.33;                   // Quadrature-axis reactance/phase
n=900;                      // Speed of motor
deltanew=-45;
RatTor=200;                 // Rated torque of motor
// (a)  Developed torque
Pmag1ph=-((Vt1ph*2*Ef1ph)/Xd)*sind(delta);  // Power 
Prel1ph=-Vt1ph^2*( (Xd-Xq) / (2*Xd*Xq)) *sind(2*delta); // Reluctance power
Psal3ph=3*(Pmag1ph+Prel1ph);  // Salient power of motor
Psal3phHP=Psal3ph/746;
T=(5252*Psal3phHP)/n;         // Developed torque

// (b) Developed torque in percent of rated torque
// The reluctance torque has its maximum value at delta= -45 degrees
Pmag1phnew=-((Vt1ph*2*Ef1ph)/Xd)*sind(deltanew); // Power
Prel1phnew=-Vt1ph^2*( (Xd-Xq) / (2*Xd*Xq)) *sind(2*deltanew); // Reluctance power
Psal3phnew=3*(Pmag1phnew+Prel1phnew);  // Salient power of motor
Psal3phHPnew=Psal3phnew/746;
PerRatTorq=Psal3phHPnew*100/RatTor;

// Display result on command window
printf("\n Developed torque  = %0.0f lb-ft ",T);
printf("\n Developed torque in percent of rated torque = %0.0f Percent ",PerRatTorq);
