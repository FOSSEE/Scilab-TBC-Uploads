// Example 7.1 
// Compuatation of the lower limit on the transmitter power
//
// Page no. 305

clc;
clear;
close;

//Given data
q=1.6*10^-19;
R=1;
B=7*10^9;
c=3*10^8;           // Velocity of light
h=6.62*10^-34;     // Planck constant
Q=6;
k=1.38*10^-23;    // Boltzman constant
T=298;
Rl=50;
alpha=0.046;     // Fiber loss coefficient
L=130;           // Length


// The lower limit on the transmitter power
a=2*q*R*B;
b=(4*k*T*B)/Rl;
p=(2*sqrt(b)/R*Q)+((a*Q^2)/R^2);
Pi=p*exp(alpha*L);

//Displaying the result in command window
printf("\n The lower limit on the transmitter power = %0.2f  mW",Pi*10^3);
printf("\n The lower limit on the transmitter peak power is 7.23mW. If the transmitter peak power < 7.23mW, Q < 6.");

// The answer vary due to round off error


