// Example 8.45
// Calculation of incident optical power.
// Page no 499

clc;
clear;
close;

//Given data
lambda=1.3*10^-6;                      // Wavelength
B=6*10^6;                             // Bandwidth
S=10^5;                               // Total system margin
n=1;                                 // Efficiency
v=3*10^14;
h=6.62*10^-34;                       // Planck constant



// Incident optical power
P=(2*S*v*h*B)/n;  

P1=10*log10(P/10^-3);

//Displaying results in the command window            
printf("\n Incident optical power(in nW) = %0.1f  ",P1);


// The answers vary due to round off error
