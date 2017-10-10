// Example 1.9
// Computation of (a) Frequency of the generated emf (b) Speed of the rotor
//Page No. 31

clc;
clear all;
close;

// Given data
Erms=100;            // Voltage generated in armature coil
N=15;                // Number of turns in armature coil
phimax=0.012;        // Flux per pole
P=4;                 // Number of poles

// (a)  frequency of the generated emf
f=Erms/(4.44*N*phimax);      

// (b) speed of the rotor
n=2*f/P;   
nmin=n*60;               

//Display result on command window
printf("\n Frequency of the generated emf = %0.0f Hz ",f);
printf("\n Speed of the rotor = %0.2f  r/s",n);
printf("\n Speed of the rotor = %0.0f  r/min",nmin);
