// Example 8.49
// Calculation of viability of digital link.
// Page no 503

clc;
clear;
close;

//Given data
M=-10;                      // Mean optical power
S=-41;                      // Receiver sensitivity
TS=18.2;                    // Total system margin
SP=3;                       // Split loss
C=1.5;                     // Connector loss
SM=6;                       // Safety margin


// Net margin between LED and receiver
N=M-S;  

// Total system loss
T=TS+SP+C+SM;
// Excess power margin
E=N-T;




//Displaying results in the command window            
printf("\n Excess power margin(in dB) = %0.1f  ",E);


// The answers vary due to round off error
