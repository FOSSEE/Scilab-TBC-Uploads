// Example 11.4
// Computation of resistance using linear approximation and values are 
// compared with results obtained in example 11.1
// Page No. 456
clc;
clear;
close;

// Given data
HP=40;                   // hp rating of the device
%ratedload=0.902;        // Percentage rated load
VT=240;                  // Voltage value of motor
RF=99.5;                 // Resistance of shunt motor
Nf=1231;                 // Turns per pole of the shunt motor
Ra=0.0680;               // Armature resistance
RIP=0.0198;              // Interpole winding resistance
Rs=0.00911;              // Resistance of series field winding
Bp1=0.70;                // Flux density for a net mmf
n1=1150;                 // Speed of shunt motor
n2=1.25*n1;
IT=137.84; 
// Computation of resistance using linear approximation and values are 
// compared with results obtained in example 11.1

IF=VT/RF;                // Field current
Ia1=IT-IF;               // Armature current
Fnet1=Nf*IF;             // Net mmf
Racir=Ra+RIP+Rs;         // Armature circuit resistance
Fnet2=Fnet1*(n1/n2)*((VT-Ia1*Racir*1.15)/(VT-Ia1*Racir));
IF1=Fnet2/Nf;           // Field current
Rx=(VT/IF1)-RF;         // External resistance required


// Display result on command window
printf("\n The resistance rating of an external resistance = %0.2f Ohm ",Rx);

