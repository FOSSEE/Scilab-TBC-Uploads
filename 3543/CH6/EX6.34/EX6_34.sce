// Example 8.34
// Calculation of signal to noise ratio.
// Page no 491

clc;
clear;
close;

//Given data

h=6.62*10^-34;                       // Planck constant
c=5*10^-12;                          // capacitor
lambda=1.55*10^-6;                  // Wavelength
B=50*10^6;                         // Speed of communication
s=2*10^-9;
I=10^-7;
k=1.381*10^-23;
T=291;
x=0.3;
e=1.602*10^-19;

// Maximum load resistance is
R=1/(2*%pi*c*B);

S=I^2/((2*e*B*I)+(4*k*T*B/R));
M=((4*k*T)/(e*x*R*I))^(0.435);
S1=((((M^2)*(I^2))/(2*e*B*I*M^2.3))+((4*k*T*B)/R));
S1=10*log10(S1);
//Displaying results in the command window            
printf("\n Load resistor(in ohm) = %0.1f  ",R);
printf("\n S/N(in dB) = %0.2f  ",S);
printf("\n M  = %0.2f  ",M);
printf("\n S/N(in dB)  = %0.2f  ",S1);

// The answers vary due to round off error
