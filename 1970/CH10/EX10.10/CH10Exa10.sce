// Scilab code Exa10.10 : : Page-458 (2011)
clc; clear;
N_0 = 6.02252e+26;        // Avogadro's constant
sigma = 3.5e-28;            // Cross section, square metre
rho = 8.9e+03;                // Nuclear density, Kg per cubic metre
M = 58;                          // Mass number  
summation = rho/M*N_0*sigma;    // Macroscopic cross section, per metre
x = 0.01e-02;                   // Thickness of nickel sheet, metre
I0_ratio_I = exp(summation*x/2.3026);    // Fractional attenuation of neutron beam on passing through nickel sheet
printf("\nThe fractional attenuation of neutron beam on passing through nickel sheet = %6.4f", I0_ratio_I);

// Result
// The fractional attenuation of neutron beam on passing through nickel sheet = 1.0014 
// Wrong answer given in the textbook
