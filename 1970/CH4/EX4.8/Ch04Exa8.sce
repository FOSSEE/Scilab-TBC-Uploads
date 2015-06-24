// Scilab code Exa4.8 : : Page-179 (2011)
clc; clear; 
A = 1.5e-4;           // Area of capacitor plates, square metre
K = 12;               // Dielectric constant
D = K*8.8542e-012;   // Electrical permittivity of the medium, per newton-metre-square coulomb square
x = 50e-06;           // Width of depletion layer, metre
C = A*D/x*10^12;      // Capacitance of the silicon detector, pF
E = 4.5e+06;          // Energy produced by the ion pairs, eV
N = E/3.5;            // Number of ion pairs
e = 1.60218e-019;     // Charge of each ion, coulomb
Q = N*e;              // Total charge, coulomb
V = Q/C*10^12;        //  Potential applied across the capacitor, volt
printf("\nThe capacitance of the detector : %6.2f pF\nThe potential applied across the capacitor : %4.2e volt", C, V);

// Result
// The capacitance of the detector : 318.75 pF
// The potential applied across the capacitor : 6.46e-004 volt 
