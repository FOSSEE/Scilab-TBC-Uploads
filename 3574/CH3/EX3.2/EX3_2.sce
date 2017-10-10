// Example 3.2
// Computation of (a) Rated primary and secondary currents when connected as 
// autotransformer (b) Apparent power rating when connected as an autotransformer
// Page No. 100

clc;
clear;
close;

// Given data
S=10000;              // Supply voltage
VLS=240;              // Voltage at the low side
VHS=2400;             // Voltage at the high side
Sw=10;                // Power rating

// (a) Rated primary and secondary currents when connected as autotransformer 

ILSWINDING=S/VLS;     // Rated primary current
IHSWINDING=S/VHS;     // Rated secondary current


// (b) Apparent power rating when connected as an autotransformer

a=VHS/VLS;                  // Magnetic drop across R1
Sat=(a+1)*Sw;    


//Display result on command window

printf("\n Rated primary current = %0.2f A ",ILSWINDING);
printf("\n Rated secondary current = %0.3f A ",IHSWINDING);
printf("\n Apparent power rating = %0.0f KVA ",Sat);
