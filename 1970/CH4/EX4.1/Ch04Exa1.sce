// Scilab code Exa4.1 : : Page 178 (2011)
clc; clear;
N = 200e+006/35;    // Total number of ion-pairs
e = 1.60218e-019;     // Charge of an ion, coulomb
Q = N*e;    // Total charge produced in the chamber, coulomb
C = 25e-012;     // Capacity of the collector, farad
V = Q/C;     // Resultant pulse height, volt 
printf("\nThe resultant pulse height recorded in the fission chamber = %4.2e volt", V);

// Result
// The resultant pulse height recorded in the fission chamber = 3.66e-002 volt 