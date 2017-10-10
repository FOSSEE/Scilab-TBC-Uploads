// Example 9.4
// Calculation of the maximum reach up to which the carrier orthogonality is preserved.
// Page no 408

clc;
clear;
close;

//Given data
b=22*10^-27;                 // Power launched in port 1
T=1.28*10^-9;                // Guard interval
N=128;                       //  Subcarriers
f=78.125*10^6;               // Frequency spacing between subcarriers

// Bit rate of communication system
I=T/(b*2*%pi*N*f);
I=I*10^-3;



//Displaying results in the command window            
printf("\n The maximum reach up to which the carrier orthogonality is preserved = %0.0f km ",I);

// The answers vary due to round off error
