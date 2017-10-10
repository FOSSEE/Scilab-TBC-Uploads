// Example 2.8
// Calculation of threshold power of stimulated Brillouin scattering and Raman Scattering
// Page no 52

clc;
clear;
close;

// Given data
A=0.5;                       // Attenuation
d=5;                         // Core diameter
lambda=1.3;                  // Operating wavelength
v=0.7;                       // Bandwith of laser diode

// Threshold power of stimulated Brillouin scattering
Pb=4.4*10^-3*d^2*lambda^2*A*v;
Pb=Pb*10^3;

//Threshold power stimulated Raman Scattering
Pr=5.9*10^-2*d^2*lambda*A; 

//Display result on command window
printf("\n Threshold power of stimulated Brillouin scattering (in mW) = %0.2f ",Pb);
printf("\n Threshold power stimulated Raman Scattering (in W)= %0.2f",Pr);


