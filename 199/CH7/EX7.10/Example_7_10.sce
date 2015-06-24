// Chapter7
// Page.No-277
// Example_7_10
// Design of notch filter
// Given
clear;clc;
fn=60; // Notch-out frequency in Hz
C=0.068*10^-6; // Assumption
R=1/(2*%pi*fn*C);
printf("\n Resistance R is = %.1f ohm \n",R) // Result
