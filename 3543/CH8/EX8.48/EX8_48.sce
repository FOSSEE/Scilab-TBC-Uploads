// Example 8.48
// Calculation of optical power budget.
// Page no 502

clc;
clear;
close;

//Given data
M=-10;                      // Mean optical power
S=-25;                      // Split loss
TS=7;                       // Total system margin
SP=1.4;                     // Split loss
C=1.6;                     // Connector loss
SM=4;                      // Safety margin


// Net margin between LED and receiver
N=M-S;  

// Total system loss
T=TS+SP+C+SM;
// Excess power margin
E=N-T;




//Displaying results in the command window            
printf("\n Excess power margin(in dB) = %0.0f  ",E);


// The answers vary due to round off error
