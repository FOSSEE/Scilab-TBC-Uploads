// Example 2.1
// Computation of peak value of sinusoidal flux in a transformer
// Page No. 42

clc;
clear all;
close;

// Given data
Ep=240;                // Voltage in primary coil
Np=200;                // Number of turns in primary coil of transformer
f=60;                  // Frequency of source

// Peak value of sinusoidal flux in a transformer
phimax=Ep/(4.44*Np*f);      


//Display result on command window
//printf("\n Peak value of sinusoidal flux in a transformer = %0.4f WB ",phimax);


mprintf('Peak value of sinusoidal flux in a transformer = %3.2e Wb', phimax);
