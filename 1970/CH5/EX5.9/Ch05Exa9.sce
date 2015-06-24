// Scilab code Exa5.9 : : Page 205(2011)
clc; clear;
a_v = 14;        // Volume energy constant, MeV
a_s = 13;        // Surface energy constant, MeV
a_c = 0.60;      // Coulomb energy constant, MeV
a_a = 19;        // Asymmetric energy constant, MeV
A = 202;        // Mass number
Z = 82;         //  Atomic number 
dE_by_dN = -8/9*a_s/A^(4/3)-4/3*a_c*Z/A^(4/3)*(1-4*Z/(3*A))-16*a_a*Z/A^2*(1-2*Z/A);        // Slope, mega electron volts per nucleon
printf("\nThe slope of alpha decay energy versus atomic number = %7.5f MeV/nucleon", dE_by_dN);

// Result
// The slope of alpha decay energy versus atomic number = -0.15007 MeV/nucleon 