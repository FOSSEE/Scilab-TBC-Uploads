// Example 6.3
// Determine (a) NEMA standard horsepower rating of machine (b) Required 
// running capacitance (c) Additional capacitance required for starting
// Page No. 271

clc;
clear;
close;

// Given data
hp=35;                // Power in hp
p=3;                  // Number of phase
f=60;                 // Frequency


// (a) NEMA standard horsepower rating of machine

Prated3ph=hp*p/2;

// (b)Required running capacitance

C1=26.5*f;

// (c) Additional capacitance required for starting.

C2=230*f-C1;

// Display result on command window
printf("\n NEMA standard horsepower rating of machine = %0.1f hp ",Prated3ph);
printf("\n Required running capacitance = %0.0f microF ",C1);
printf("\n Additional capacitance required for starting = %0.0f microF ",C2);

