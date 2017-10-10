// Example 6_13
clc;funcprot(0);
// Given data
D=0.5;// The diameter of cirrcular disk in m
mu=1.0;// The viscosity of oil in Pa s
rho=9.0*10^2;// Density in kg/m^3
omega=1*10^3;// The angular frequency in s^-1
phi=1*10^-3;// The angular amplitude

// Calculation
P=(%pi/32)*mu*(omega*phi)^2*((omega*rho)/(2*mu))^(1/2)*D^4;// W
printf("\nThe power absorbed by the vibration damper,P=%1.3f W",P);
