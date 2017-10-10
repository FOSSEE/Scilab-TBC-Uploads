// Example 6.2
// Calculation of the variance of the signal–ASE beat noise
// Page no 255

clc;
clear;
close;

//Given data

a=1.3*10^-16;                 // PSD of an amplifier
f=7*10^9;                    // Cut off frequency
Pi=10*10^-6;                 // Input power
R=0.8;                      // Responsivity
G=20;                       // Gain of an amplifier

// The variance of the signal–ASE beat noise
G=10^(G/10);
P=G*Pi;

r=4*R^2*P*a*f;
r=r*10^9;




//Displaying results in the command window            
printf("\n The variance of the signal–ASE beat noise current is = %0.2f x 10^-9  A^2",r);


// The answers vary due to round off error
