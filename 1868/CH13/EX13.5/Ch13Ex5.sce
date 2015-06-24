// Scilab code Ex13.5: Pg 483 (2005)
clc; clear;
T_half = 1.6e+03*3.16e+07;    // Half life of radioactive nucleus Ra-226, s
lambda = 0.693/T_half;  // Decay constant of Ra-226, per second
N0 = 3.0e+016;  // Number of radioactive nuclei at t = 0
R0 = lambda*N0; // Activity of sample at t = 0, decays/s
t = 2.0e+003*3.16e+07;   // Time during which the radioactive disintegration takes place, s
R = R0*exp(-1*lambda*t);  // Decay rate after 2.0e+003 years, decay/s
printf("\nThe decay constant of Ra-226 = %3.1e per second", lambda);
printf("\nThe activity of sample at t = 0 = %4.1f micro-Ci", R0/(3.7e+010*1e-006));  
printf("\nThe activity of sample after %3.1e years = %3.1e decays/s", t, R);  

// Result
// The decay constant of Ra-226 = 1.4e-11 per second
// The activity of sample at t = 0 = 11.1 micro-Ci
// The activity of sample after 6.3e+10 years = 1.7e+05 decays/s 
