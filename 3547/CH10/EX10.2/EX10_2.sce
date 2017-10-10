// Example 10.2
// Calculation of the lower limit on the effective area of the fiber.
// Page no 431

clc;
clear;
close;

//Given data

c=3*10^8;                // Velocity of light
tl=1000*10^3;            // Total length
as=100*10^3;             // Amplifier spacing
alpha=0.046*10^-3;       // Loss coefficient
L=100*10^3;
n2=2.5*10^-20;          // Kerr coefficient
p=0;                    // Peak power at the fiber input
lambda=1550*10^-9;      // Operating frequency

// The peak power required to form a soliton
Le=(1-exp(-alpha*L))/alpha;
n=tl/as;
p=10^(p/10);
r=0.5/(Le*p);
A=(2*%pi*n2)/(lambda*r);
A=A*10^12;

// Displaying results in the command window            
printf("\n The lower limit on the effective area of the fiber  = %0.2f micrometer^2",A*10^-2);
printf("\n The effective area should be greater than 43.62 μm2 to have the peak nonlinear phase shift less than or equal to 0.5 rad.");


// The answers vary due to round off error
