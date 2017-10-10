// Example 10.1
// Computation of (a) Induced emf (b) Frequency of the rectangular voltage 
// wave in the armature winding
// Page No. 394

clc;
clear;
close;

// Given data
E1=136.8;               // Generated emf
P=6;                    // Number of poles
n=1180;                 // Operating speed of machine

// (a) Induced emf 

E2=E1*0.75*2;

// (b) Frequency of the rectangular voltage wave in the armature winding

f=P*n*0.75/120;

//Display result on command window
printf("\n Induced emf = %0.1f V ",E2);
printf("\n Frequency of the rectangular voltage wave = %0.2f Hz ",f);

