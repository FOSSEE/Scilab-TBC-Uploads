// Scilab code Exa11.8 : : Page-537 (2011)
clc; clear;
R = 0.35;            // Orbit radius, metre
N = 100e+06/480;        // Total number of revolutions
L = 2*%pi*R*N;            // Distance traversed by the electron, metre
t = 2e-06;                // Pulse duration, sec
e = 1.6203e-19;            // Charge of an electron, C
n = 3e+09;                // Number of electrons
f = 180;                // frequency, hertz
I_p = n*e/t;            // Peak current, ampere
I_avg = n*e*f;           // Average current, ampere 
tau = t*f;                // Duty cycle
 printf("\nThe peak current = %3.1e ampere  \nThe average current = %4.2e ampere \nThe duty cycle = %3.1e", I_p, I_avg, tau);

// Result
// The peak current = 2.4e-004 ampere  
// The average current = 8.75e-008 ampere 
// The duty cycle = 3.6e-004 
