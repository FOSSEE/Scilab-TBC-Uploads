// Example 3.8
clear all;
clc;

// 1 barn = 10^(-24) cm^2
// From the Figure 3.4 given in the textbook
sigmae = 4.8*10^(-24);                // Experimental cross section of carbon from 0.02eV to 0.01MeV
// Assuming spherical shape and elstic scattering
R = sqrt(sigmae/(4*%pi));
// Result
printf('\n Radius of carbon nucleus = %3.1E cm\n',R);
