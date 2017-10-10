// Example 3.9
// Determine the minimum power rating required for each transformer
// Page No. 117

clc;
clear;
close;

// Given data
P=50000;                      // Transformer power rating
Eline=120;                    // Line voltage
FP=0.9                        // Power factor lagging
VL=120;

// Line current is
Iline=P/(sqrt(3)*Eline*FP);

// Minimum power rating required for each transformer
Pmin=VL*Iline/1000;


// Display result on command window
printf("\n Minimum power rating required for each transformer = %0.1f kVA ",Pmin);
