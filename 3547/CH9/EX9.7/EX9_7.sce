// Example 9.7
// Calculation of the (a) the total data rate and (b) the spectral efficiency.
// Page no 413

clc;
clear;
close;

//Given data
M=16;
np=2;              // No of polarization
nc=24;             // No of channels
bs=28*10^9;      // Symbol rate per polarization

// (a) The total data rate
B=bs*log2(M);
T=B*np*nc;


// (b) The spectral efficiency
N=bs*nc;
s=T/N;

//Displaying results in the command window            
printf("\n The total data rate  = %0.3f Tb/s ",T*10^-12);

printf("\n The spectral efficiency = %0.1f b/s/Hz ",s);

