// Scilab Code Ex16.8: Page-602(2014)
clc; clear;
c = 3.00e+008;    // Speed of light, m/s
H = 22;    // Hubble constant, km/s per million ly
G = 6.67e-011;    // Universal gravitational constant, N-Sq.m/kg^2
rho_c = 3/(8*%pi)*H^2/G*1e+003/(c*365.25*24*60*60*1e+006)^2;    // The critical density of the universe, g/cc
printf("\nThe critical density of the universe = %3.1e g/cc", rho_c);

// Result
//The critical density of the universe = 9.7e-030 g/cc 