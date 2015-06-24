// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 1 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 1.4 

clc;clear; // clears the console and command history

// Given data 
V_t1 = 30   // magnitudes of voltages in V  0 < t1 < 2
V_t2 = -10  // magnitudes of voltages in V  2 < t2 < 4
T = 4 // time period from figure 

// caclulations 

V1 = 30;
V2 = -10;
X= sqrt((1/4)*(integrate('V1^2','x',0,2) + integrate('V2^2','x',2,4)));

//display the result 
disp("Example 1.4 solution");
printf("\n RMS value of the voltage waveform : \n V_rms = %.2f V ", X);
