// Example 8.3
// Calculation of the maximum transmission distance.
// Page no 394

clc;
clear;
close;

//Given data
p=3;                                  // Peak power
tb=40*10^9;                           // Bit rate
c=3*10^8;                            // Velocity of light
lambda=1550*10^-9;                   // Operating frequency
l=0.2;                               // Loss
d=80;                                // Distance
G=16                                // Gain
h=6.626*10^-34                      // Planck constant
n=1;
pb=10^-5;                           // Error probability
l1=80*10^3;                         // N spans


// The maximum transmission distance

p=p+10*log10(1/2);
p=10^(p/10)*10^-3;
t=1/(tb);
E=p*t;
f=c/lambda;
fl=l*d;
G=10^(G/10);
r=n*h*f*(G-1);   // Calculation is wrong in book.
//pb=1/2*(exp(-(E/r)));
N=-(E/(log(2*pb)*r));

L=N*l1;

// Displaying results in the command window            
printf("\n The maximum transmission distance = %0.2f km",L*10^-3);

// In the book PSD per amplifier calcualation is wrong, therefore final answer is wrong.
