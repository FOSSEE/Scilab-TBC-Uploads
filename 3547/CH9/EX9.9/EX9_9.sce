// Example 9.9
// Calculation of the (a) the signal power/subcarrier/polarization at the fiber output, (b) the data rate and (c) the spectral efficiency
// Page no 414

clc;
clear;
close;

//Given data
fl=0.19;            // Fiber loss
fg=70;              // Fiber length
nc=24;             // No of channels
ip=2;
bs=10*10^9;        // Symbol rate per polarization
ts= 12.8*10^-9;    // Symbol period
n=64;              // No of subcarriers
np=2;              // Launch power to the fiber


// (a) The signal power/subcarrier/polarization at the fiber output
T=fl*fg;
p=ip-T;
p1=10^(p/10);
s=p1/(np*n);
//s=s*10^4;

// (b) The data rate
bs=1/ts;
B=log2(n)*bs;
bt=B*2*n;

// (c) the spectral efficiency
Tb=n*bs;
se=bt/Tb;




//Displaying results in the command window            
printf("\n The signal power/subcarrier/polarization at the fiber output = %0.3f x 10^-4 mW ",s*10^4);

printf("\n The data rate = %0.0f Gb/s ",bt*10^-9);

printf("\n The spectral efficiency = %0.0f b/s/Hz ",se);

// The answers vary due to round off error
