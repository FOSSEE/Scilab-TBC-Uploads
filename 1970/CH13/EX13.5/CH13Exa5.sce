// Scilab code Exa13.5 : : Page-601 (2011)
clc; clear; 
a = 10^5;        // Area of the lake, square mile
d = 1/20;        // Depth of the lake, mile
V = a*d*(1.6e+03)^3;   // Volume of the lake, cubic metre
rho = 10^3;            // Density of water, kg per cubic metre
M_water = V*rho;        // Total mass of water in the lake, Kg
N_0 = 6.02214e+26;      // Avogadro's constant, per mole
A = 18;                 // Milecular mass of water
N = M_water*N_0/A;      // Number of molecules of water, molecules
abund_det = 0.0156e-02; // Abundance of deterium
N_d = N*2*abund_det;    // Number of deterium atoms
E_per_det = 43/6;       // Energy released per deterium atom, mega electron volts
E_t = N_d*E_per_det;    // Total energy released during fusion, mega electron volt
printf("\nThe total energy released during fusion = %4.2e MeV", E_t);

// Result
// Total energy released during fusion = 1.53e+039 MeV


  