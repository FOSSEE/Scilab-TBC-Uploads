// Scilab code Exa5.3 : : Page 203 (2011)
// We have also calculate the value of magnetic field in a particular orbit. 
clc; clear;
C = 3e+08;                // Velocity of light, m/S
M_0 = 6.644e-027*(C)^2/(1.60218e-013);        // Rest mass of alpha particle, MeV
T = 5.998;                // Kinetic energy of alpha particle emitted by Po-218
q = 2*1.60218e-019;        // Charge of alpha particle, C
V = sqrt(C^2*T*(T+2*M_0)/(T+M_0)^2);            // Velocity of alpha particle,metre per sec
B_r = V*M_0*(1.60218e-013)/(C^2*q*sqrt(1-V^2/C^2));                // magnetic field in a particular orbit, Web per mtere
printf("\nThe velocity of alpha particle : %5.3e m/s\nThe magnetic field in a particular orbit : %6.4f Wb/m", V , B_r);

// Result
// The velocity of alpha particle : 1.699e+007 m/s
// The magnetic field in a particular orbit : 0.3528 Wb/m 