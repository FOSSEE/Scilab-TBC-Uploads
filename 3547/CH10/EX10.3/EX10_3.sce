// Example 10.3
// Calculation of the peak power required to form a soliton
// Page no 435

clc;
clear;
close;

//Given data

b=-21*10^-27;       // FWHM of a fundamental soliton
Tf=50*10^-12;       // Fiber dispersion coefficient
r=1.1*10^-3;        // Nonlinear coefficient

// The peak power required to form a soliton
Th=asech(sqrt(0.5));
f=2*Th;
T0=Tf/f;
n=(sqrt(-b))/T0;
P=(n^2)/r;
//P=P*10^2;


// Displaying results in the command window            
printf("\n The peak power required to form a soliton = %0.1f mW",P*10^2);

// Answer is wrong in book

