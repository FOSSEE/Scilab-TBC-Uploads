// Example 5.8
// Determine (a) Expected minimum locked-rotor torque (b) Repeat (a) when 
// voltage and frequency dropped to 230V and 58Hz  
// Page No. 193

clc;
clear;
close;

// Given data
HPrated=75;            // Rated horsepower
nrated=1750;           // Rated speed
V1=240;                // Rated voltage
V2=230;                // Voltage after drop
F1=60;                 // Rated frequency
F2=58;                 // Frequency after drop

// (a) Expected minimum locked-rotor torque
Trated=5252*HPrated/nrated;   // Rated torque
Tlr=Trated*1.2;               // Minimum locked-rotor torque is 120% rated 

// (b) Expected minimum locked-rotor torque when voltage and frequency dropped 
// to 230V and 58Hz  
Tlr2=Tlr*((V2/F2)^2)*((F1/V1)^2);

// Display result on command window
printf("\n Expected minimum locked-rotor torque = %0.0f lb-ft",Tlr);
printf("\n Expected minimum locked-rotor torque after drop = %0.0f lb-ft",Tlr2);

