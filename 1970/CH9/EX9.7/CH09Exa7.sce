// Scilab code Exa9.7 : : Page-392 (2011)
clc; clear;
h_cut = 1.0545e-34;       // Reduced Planck's constant, joule sec
R = 1.2e-15;            // Distance of closest approach, metre
m = 1.67482e-27;        // Mass of the nucleon, Kg
// For O-17
for A = 17:60           // Mass numbers
if A == 17 then
omega_O = 5*3^(1/3)*h_cut*17^(-1/3)/(2^(7/3)*m*R^2);    // Angular frequency of oxygen 
// For Ni-60
elseif A == 60 then
omega_Ni =  5*3^(1/3)*h_cut*60^(-1/3)/(2^(7/3)*m*R^2);  // Angular frequency of nickel
end 
end 
printf("\nThe angular frequency for oxygen 17 = %4.2e \nThe angular frequency for nickel 60 = %4.2e", omega_O, omega_Ni);

// Result
// The angular frequency for oxygen 17 = 2.43e+022 
// The angular frequency for nickel 60 = 1.60e+022 