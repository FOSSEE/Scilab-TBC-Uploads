// Example 1.2
// Computation of (a) Current in the coil (b) Magnetic potential difference across R3
// (c) Flux in R2
//Page No. 13

clc;
clear all;
close;

// Given data
phi=0.250;               // Flux in Wb
R1=10500;                // First magnetic circuit parameter
R2=40000;                // Second magnetic circuit parameter
R3=30000;                // Third magnetic circuit parameter
N=140;                   // Number of turns of copper wire

// (a) Current in the coil
RParr=(R2*R3)/(R2+R3);      // Parallel resistance
Rckt=R1+RParr;              // Circuit resistance
I=(phi*Rckt)/N;

// (b) Magnetic potential difference across R3
F1=phi*R1;                  // Magnetic drop across R1
F3=(I*N)-F1;                // Flux across R3

//(c) flux in R2
phi2=F3/R2;


//Display result on command window
printf("\n Current in the coil  = %0.2f A ",I);
printf("\n Magnetic potential difference across R3 = %0.2f A-t  ",F3);
printf("\n Flux in R2 (Wb) = %0.4f Wb ",phi2);
