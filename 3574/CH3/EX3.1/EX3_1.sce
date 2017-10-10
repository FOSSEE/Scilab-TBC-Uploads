// Example 3.1
// Computation of (a) Load current (b) Incoming line current
// (c) Transformed current (d) Apparent power conducted and apparent power transformed
// Page No. 98

clc;
clear;
close;

// Given data
NHS=400;               // Number of turns in the high side
NLS=0.25*400;          // Number of turns in the low side
VHS=2400;              // Voltage at the high side
S=4800;                // Supply voltage

// (a) Load current
a=NHS/NLS;             // Transformer turn ratio  
VLS=VHS/a;             // Low side voltage      
ILS=S/VLS;             // Load current

// (b) Incoming line current
IHS=ILS/a;    

//(c)  Transformed current
ITR=ILS-IHS;

// (d) Apparent power conducted and apparent power transformed

SCOND=IHS*VLS;     // Apparent power conducted
STRANS=ITR*VLS;    // Apparent power transformed  


// Display result on command window
printf("\n Load current  = %0.0f A ",ILS);
printf("\n Incoming line current = %0.0f A ",IHS);
printf("\n Transformed current = %0.0f A ",ITR);
printf("\n Apparent power conducted = %0.0f VA ",SCOND);
printf("\n Apparent power transformed = %0.0f VA ",STRANS);
