// Example 1.6
// Computation of (a) Frequency (b) Pole flux
// Page No. 27

clc;
clear;
close;

// Given data
w=36;               // Angular frequency
E=24.2;             // Voltage
pi=3.14;                
N=6;                // Number of turns of rotor

// (a)  frequency 
f=w/(2*pi);           // Relation between angular frequency and frequency

// (b) pole flux
Erms=E/sqrt(2);
phimax = Erms/(4.44*f*N);     // Relation to find pole flux
           

//Display result on command window
printf("\n Frequency = %0.4f Hz ",f);
printf("\n Pole flux = %0.2f Wb ",phimax);

