// Example 1.7
// Computation of  eddy current loss if the apparatus is connected to a 60 Hz
//source 
// Page No. 29

clc;
clear;
close;

// Given data
V=240;                 // Rated voltage
F1=25;                 // Rated frequency
Pe1=642;               // Eddy current loss
F2=60;                 // Source Frequency
Bmax1=1.0              // Flux density is 62 percent of its rated value
Bmax2=0.62             // Flux density is 62 percent of its rated value

//  Eddy current loss if the apparatus is connected to a 60 Hz source 
Pe2=Pe1*[(F2/F1)^2*(Bmax2/Bmax1)^2];
Pe2=Pe2/1000;

// Display result on command window
printf("\n Eddy current loss if the apparatus is connected to a 60 Hz source  = %0.2f kW ",Pe2);

