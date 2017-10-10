// Example 2.4
// Calculation of output power
// Page no 46

clc;
clear;
close;

// Given data
Pi=1;                                       // Input power
A=0.5;                                     // Atteuation
L=15;                                     // Fiber link length

// Output Power
Po=Pi*10^((-A*L)/10);                     

//Display result on command window
printf("\n Output Power (in mW) = %0.3f  ",Po);


