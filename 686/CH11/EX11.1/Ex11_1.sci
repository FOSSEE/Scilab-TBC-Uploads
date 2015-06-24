clc();
clear;

// To calculate the local heat transfer coefficient 

Ts = 200;                            // Temperature of steam in F
Ta = 68;                             // Air temerature in F
n = 24.21*10^-5;                     // Kinematic viscosity in ft^2/sec
k = 0.0181;                          // Thermal conductivity in Btu/hr-ft-F
g = 32.2;                            // Gravity 
b = 1/528;                           // Expansion coefficient
x = 8/12;                            // Distance from lower end
th = Ts-Ta;                          // Temperature difference in F
Gr = g*b*th*x^3/(n^2);               // Grashops number
Pr = 0.694;                          // Prandtls number
del = x*3.93*Pr^(-0.5)*((0.952+Pr)^1/4)*Gr^(-0.25);    
// Boundary layer thickness
h = 2*k/del;                         // film heat transfer coefficient
hav = 4*h/3;                         // Avg heat transfer cioefficient
printf("The average heat transfer coefficient over the length of 8 in. is %.2f Btu/hr-ft^2-F",h);






