// Example 6.6
// Calculation of (a) the saturation power and (b) the bias current I
// Page no 273

clc;
clear;
close;

//Given data

c=3*10^8;                // Velocity of light
lambda=1530*10^-9;      // Wavelength
t=0.3                   // Overlap factor
r=7.3*10^-20;           // Gain cross section
r0=1*10^-9;            // Carrier lifetime
q=1.609*10^-19;     
v=7.5*10^-16;         // Active volume
h=6.63*10^-34         // Planck constant
A=5*10^-6;            // Effective area
g=4.82*10^3;          // Small signal gain coeffifient
N=3.5*10^23;          // 

// (a) the saturation power and 


f=c/lambda;
Ps=(h*f*A)/(t*r*r0);
Ps=Ps*10^-3;

// (b) the bias current I

I=(g/(r*r0)+N/r0)*q*v;
I=I*10^3;
// Displaying results in the command window            
printf("\n The saturation power Psat = %0.3f mW ",Ps);

printf("\n The bias current I = %0.3f mA ",I);


// The answers vary due to round off error
