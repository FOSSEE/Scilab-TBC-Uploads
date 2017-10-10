// Example 9.5
// Determine (a) Bus frequency (b) Load on each machine
// Page 360

clc;
clear;
close;

// Given data
Padd=720;                    // Additional load connected
GD=0.0008;                   // Governor droop
f=60.2;                      // Frequency of machine
Pbus=900;                    // Bus load

// (a) Bus frequency
deltaPa=Padd/2;        
deltaPb=deltaPa;           // Since both machines have identical governor drops       
deltaF=GD*deltaPa;         // Change in frequency
Fbus=f-deltaF;

// (b) Load on each machine
Pa=(2/3)*Pbus+deltaPa;     // Load on machine A
Pb=(1/3)*Pbus+deltaPb;     // Load on machine B

// Display result on command window
printf("\n Bus frequency = %0.2f Hz ",Fbus);
printf("\n Load on machine A = %0.0f kW",Pa);
printf("\n Load on machine B = %0.0f kW",Pb);
 
