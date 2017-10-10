// Example 3.3
// Computation of (a) Buck boost transformer parameters 
// (b) Repeating the same assuming utilization voltage as 246V
// Page No. 102

clc;
clear;
close;

// Given data
S=10000;              // Supply voltage
VLS=212;              // Voltage at the low side
VHSNEW=246;           // New voltage at the high side
a1=1.100;    
a11=1.0667;

// (a) Buck boost transformer parameters 
VHS=a1*VLS;

// (b) Repeating the same assuming utilization voltage as 246V

VLSNEW=VHSNEW/a11;  
  
//Display result on command window

printf("\n Actual output voltage supplied to the air conditioner is = %0.1f V ",VHS);
printf("\n Actual output voltage assuming utilization voltage as 246 V is = %0.1f V ",VLSNEW);

