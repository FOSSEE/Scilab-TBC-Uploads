// Scilab code Exa13.4 : : Page-600(2011)
clc; clear;
a_v = 14.0;        // Volume binding energy constant, mega electron volts
a_s = 13.0;        // Surface binding energy constant, mega electron volts
a_c = 0.583;        // Coulomb constant, mega electron volts
a_a = 19.3;        // Asymmetric constant, mega electron volts
a_p = 33.5;        // Pairing energy constant, mega electron volts
Z = 92;            // Atomic number 
// For U-236
A = 235;           // Mass number
E_exc_236 = a_v*(A+1-A)-a_s*((A+1)^(2/3)-A^(2/3))-a_c*(Z^2/(A+1)^(1/3)-Z^2/A^(1/3))-a_a*((A+1-2*Z)^2/(A+1)-(A-2*Z)^2/A)+a_p*(A+1)^(-3/4);        // Excitation energy for uranium 236, mega electron volts
// For U-239
A = 238;            // Mass number
E_exc_239 = a_v*(A+1-A)-a_s*((A+1)^(2/3)-A^(2/3))-a_c*(Z^2/(A+1)^(1/3)-Z^2/A^(1/3))-a_a*((A+1-2*Z)^2/(A+1)-(A-2*Z)^2/A)+a_p*((A+1)^(-3/4)-A^(-3/4));    // Excitation energy for uranium 239
// Now calculate the rate of spontaneous fissioning for U-235
N_0 = 6.02214e+23;        // Avogadro's constant, per mole
M = 235;                // Mass number
t_half = 3e+17*3.15e+7;        // Half life, years 
lambda = 0.693/t_half;        // Decay constant, per year
N = N_0/M;                    // Mass of uranium 235, Kg
dN_dt = N*lambda*3600;            // Rate of spontaneous fissioning of uranium 235, per hour
printf("\nThe excitation energy for uranium 236 = %3.1f MeV\nThe excitation energy for uranium 239 = %3.1f MeV\nThe rate of spontaneous fissioning of uranium 235 = %4.2f per hour", E_exc_236, E_exc_239, dN_dt);

// Result
// The excitation energy for uranium 236 = 6.8 MeV
// The excitation energy for uranium 239 = 5.9 MeV
// The rate of spontaneous fissioning of uranium 235 = 0.68 per hour 


  