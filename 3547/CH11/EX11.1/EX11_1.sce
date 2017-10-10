// Example 11.1
// Calculation of the minimum number of taps needed to compensate for the fiber dispersion
// Page no 509

clc;
clear;
close;

// Given data
b=22*10^-27;                 // Power launched in port 1
l=800*10^3;                  // Power launched in port 2
T=50*10^-12;                // Power launched in port 3 


// Bit rate of communication system
k=ceil((%pi*b*l)/T^2);
n=(2*k)+1;


// Displaying results in the command window            
printf("\n The number of the taps = %0.3f ",n);

// The answers vary due to round off error
