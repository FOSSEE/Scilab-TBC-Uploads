// Scilab code Exa4.2 : : Page 178 (2011)
clc; clear;
V = 0.8/4;    // Pulse height, volt
e = 1.60218e-019;     // Charge of an ion, coulomb
C = 0.5e-012;     // Capacity of the collector, farad
Q = V*C;    // Total charge produced, coulomb
N = Q/e;     // Number of ion pairs 
E_1 = 35;    // Energy of one ion pair, electron volt
E = N*E_1/10^6;    // Energy of the alpha particles, mega electron volt
printf("\nThe energy of the alpha particles = %4.3f MeV", E);

// Result
// The energy of the alpha particles = 21.845 MeV (The answer is wrong in the textbook)