// Example 6.9
// Calculation of the variance of the signal–ASE beat noise current.
// Page no 290

clc;
clear;
close;

//Given data

si=30;                // Electrical SNRs at the amplifier input
so=25;               // Electrical SNRs at the amplifier output
p=0;                 // Signal power at output 
r=-126;             // Signal power at input 
R=0.9;              // Planck constant
f=195*10^12;       // Frequency
b=20*10^9;         // Bandwidth

// The variance of the signal–ASE beat noise current
p1=10^(p/10)*10^-3;
rn=10^(r/10)*10^-3;
r1=rn*b;
r0=2*R^2*p1*r1;


//Displaying results in the command window            
printf("\n The variance of the signal–ASE beat noise current = %0.2f x 10^-9 A^2  W/Hz",r0*10^9);


// The value of noise power given in example as -126 but for calculation it is taken as -128 in book. Therefore answer is varying.
