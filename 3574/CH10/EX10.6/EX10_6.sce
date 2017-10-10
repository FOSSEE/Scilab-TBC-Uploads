// Example 10.6
// Computation of Induced emf
// Page No. 418

clc;
clear;
close;

// Given data
P=25000;               // Power of the generator
VT=250;                // Rated voltade of the machine
Ra=0.1053;             // Armature resistance
Rip=0.0306;            // Resistance of interpolar winding
Rcw=0.0141;            // Resistance of compensating windings


// Induced emf
Ia=P/VT;               // Armature current
Racir=Ra+Rip+Rcw;      // Resistance of armature circuit
Ea=VT+Ia*Racir;        // Induced emf


// Display result on command window
printf("\n Induced emf = %0.0f V ",Ea);


