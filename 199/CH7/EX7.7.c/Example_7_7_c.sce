// Chapter7
// Page.No-270
// Example_7_7_c
// Calculation of quality factor
// Given
clear;clc;
fh=1*10^3; // Higher cut-off frequency
fl=200; // Lower cut-off frequency
fc=sqrt(fl*fh); // Center frequency
printf("\n Center frequency fc is = %.1f Hz \n",fc) // Result
Q=fc/(fh-fl); // Quality factor
printf("\n Quality factor Q is = %.2f  \n",Q) // Result
