// Example 10.7
// Computation of cemf
// Page No. 418

clc;
clear;
close;

// Given data
Rf=408.5;               // Field resistance 
VT=500;                 // Rated voltade of the machine
IT=51.0;                // Total current
Ra=0.602;               // Armature resistance
Ripcw=0.201;            // Resistance of interpolar winding and compensating windings

// Induced emf
If=VT/Rf;             // Current
Ia=IT-If;             // Armature current
Racir=Ra+Ripcw;       // Resistance of armature circuit
Ea=VT-Ia*Racir;      


// Display result on command window
printf("\n Induced emf = %0.0f V ",Ea);


