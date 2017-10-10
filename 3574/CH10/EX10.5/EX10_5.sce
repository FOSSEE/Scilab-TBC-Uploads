// Example 10.5
// Computation of no-load speed
// Page No. 408

clc;
clear;
close;

// Given data
nrated=1750;               // Rated speed
SR=4;                      // Speed regulation

// No-load speed

Snl=nrated*(1+SR/100);

// Display result on command window
printf("\n No-load speed = %0.0f r/min ",Snl);


