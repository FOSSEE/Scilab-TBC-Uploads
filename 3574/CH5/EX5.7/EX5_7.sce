// Example 5.7
// Determine expected locked-rotor line current
// Page No. 192

clc;
clear;
close;

// Given data
Ir1=151;                   // Rated current
V1=230;                    // Rated voltage
V2=220;                    // Motor starting voltage
F1=60;                     // Rated frequency
F2=50;                     // Motor starting frequency

// Expected locked-rotor line current
Ir2=Ir1*((V2/F2)/(V1/F1));

// Display result on command window
printf("\n Expected locked-rotor line current = %0.0f A ",Ir2);


