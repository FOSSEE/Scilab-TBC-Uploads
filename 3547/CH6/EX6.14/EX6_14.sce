// Example 6.13
// Calculation of the upper bound on the single-pass gain
// Page no 297

clc;
clear;
close;

//Given data

n=3.5;                    // Refractive index
c1=3*10^8;                // Velocity of light
L=200*10^-6;             // Amplifier length
a=0.09;
b=-(1.2*0.1805^2+0.6);
c=1;

// The geometric mean of the facet reflectivity R
f=c1/(2*n*L);

x1 =( -1*b+ sqrt ((b ^2) -4*a*c)) /(2* a); // 1 s t r o o t
x2 =( -1*b- sqrt ((b ^2) -4*a*c)) /(2* a); // 2nd r o o t



//Displaying results in the command window            
printf("\n The geometric mean of the facet reflectivity R = %0.2f GHz ",f*10^-9);
printf("\n The upper bound on the single-pass gain Gs = %0.2f or  ",x1);
printf("\n The upper bound on the single-pass gain Gs = %0.2f  ",x2);


// The answers vary due to round off error
