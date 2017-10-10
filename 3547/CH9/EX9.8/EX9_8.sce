// Example 9.8
// Calculation of the number of subcarriers required to transmit information.
// Page no 413

clc;
clear;
close;

//Given data
M=4;
np=2;              // No of polarization
nc=24;            // No of channels
bs=10*10^9;      // Symbol rate per polarization
d=5000*10^3;     // Transmission distance
b=22*10^-27;
ts= 49.3*10^-9;

// The total data rate
B=bs*log2(M);
T=d*b*%pi*bs;
//L=T/(b*2*%pi*N*bs);
N=(bs*ts)/2;


//Displaying results in the command window            
printf("\n The number of subcarriers required to transmit information = %0.0f ",N);

// The answers vary due to round off error
