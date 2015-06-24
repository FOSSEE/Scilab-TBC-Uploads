// Scilab Code Ex15.1: Page-562(2014)
clc; clear;
g = 9.8;    // Acceleration due to gravity, m/sec^2
H = 10000;    // Altitude of the aeroplane above the surface of earth, m
c = 3.00e+008;    // Speed of light in free space, m/s
T = 45*3600;    // Time taken by the airplane to from eastward to westward trip, s
delta_T_G = g*H*T/(c^2*1e-009);    // Time difference in the two clocks due to gravitational redshift, ns
C = 4e+007;    // Circumference of the earth, m 
v = 300;        // Speed of the jet airplane, m/s
T0 = C/v;    // Time of flight of jet airplane very near the surface of the earth, s
bita = v/c;    // Boost parameter
// As from special relativity time dilation relation, T = T0*sqrt(1-bita^2), solving for T0 - T = delta_T_R, we have
delta_T_R = T0*(1-sqrt(1-bita^2))/1e-009;    // Time difference in the two clocks due to special relativity, ns
printf("\nThe gravitational time dilation effect of %d ns is larger than the approximate %4.1f ns of that of special relativity.", ceil(delta_T_G), delta_T_R);

// Result
// The gravitational time dilation effect of 177 ns is larger than the approximate 66.7 ns of that of special relativity. 