// Example 1.4
// Computation of magnitude of the developed torque
// Page No. 21

clc;
clear all;
close;

// Given data
Ebat=36;                 // Battery voltage
R=4;                     // Combined resistance of the coil
B=0.23;                  // Flux density
L=0.3;                   // Length of the coil
d=0.60;                 // Distance between centre of each conductor and centre
// of each shaft
beta_skew=15                  // Skew angle

//  Magnitude of the developed torque
alpha=90-beta_skew;
I=Ebat/R;
T=2*B*I*(L*sind(alpha))*d;  // Magnitude of the developed torque

//Display result on command window
printf("\n Magnitude of the developed torque = %0.2f N.m ",T);

