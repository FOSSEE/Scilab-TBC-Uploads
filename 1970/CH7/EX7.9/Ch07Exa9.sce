// Scilab code Exa7.9: : Page-295 (2011)
clc; clear;
c = 3e+10;            // Velocity of light, centimetre per sec
R_0 = 1.4e-13;        // Distance of closest approach, centimetre 
alpha = 1/137;        // Fine scattering constant
A = 17;                // Mass number
E_g = 5*1.6e-06;        // Energy of gamma transition, ergs
h_cut = 1.054571628e-27;        // Reduced planck constant, ergs per sec
lambda = c/4*R_0^2*alpha*(E_g/(h_cut*c))^3*A^(2/3);        // Disintegration constant, per sec
tau = 1/lambda;        // Radioactive lifr\e time, sec
printf("\nThe radioactive life time = %1.0e sec", tau);

// Result
// The radioactive life time = 9e-018 sec 


