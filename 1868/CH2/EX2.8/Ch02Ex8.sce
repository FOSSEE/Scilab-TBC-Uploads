// Scilab code Ex2.8: Pg.52 (2005)
clc; clear;

// Part (a)
// Since 1 eV = 1.6e-19 J, therefore 3 eV = 3*1.6e-19
BE = 3*1.6e-19;   // Binding energy of water, J
c = 3e+08;    // Velocity of light, m/s
delta_m = BE/(c^2);    // Mass difference of water molecule & it constituents, kg
printf("\nMass difference of water molecule & it constituents = %3.1fe-36 kg", delta_m*1e+36);

// Part (b)
M = 3.0e-26;   // Mass of water molecule, kg
M_f = delta_m/M;    // Fractional loss of mass per molecule
printf("\nThe fractional loss of mass per molecule = %3.1fe-10", M_f*1e+10);

// Part (c)
E = M_f*(c^2);     // Energy released when 1 g of water is formed, kJ
printf("\nEnergy released when 1 g of water is formed = %2.0f kJ", E*1e-06);

// Result
// Mass difference of water molecule & it constituents = 5.3e-36 kg
// The fractional loss of mass per molecule = 1.8e-10
// Energy released when 1 g of water is formed = 16 kJ