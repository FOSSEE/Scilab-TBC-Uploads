// Scilab Code Ex1.15: Page:34 (2011) 
clc;clear;
c = 3e+008;    // Speed of light in vacuum, unit
m0 = 9.1e-031;    // Rest mass of the electron, kg
m = 1.67e-027;    // Rest mass of the proton, kg
// As m = m0/sqrt(1-v^2/c^2), solving for v
v = c*sqrt(1-(m0/m)^2);    // Velocity of the electron, m/s
printf("\nThe velocity of the electron to have its mass equal to mass of the proton = %5.3e m/s", v);

// Result
// The velocity of the electron to have its mass equal to mass of the proton = 3.000e+008 m/s 