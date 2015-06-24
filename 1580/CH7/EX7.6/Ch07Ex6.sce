// Scilab Code Ex7.6:  Page-7.27 (2004)
clc;clear;
A = 100e-4;     //  Area of parallel plates, squaremetre
d = 1e-2;       //  Distance between plates, metre
eo = 8.854e-12; //  Permittivity of the free space, farad per metre
V = 100;        // Potential, volt
C = eo*A/d;     //  Capacitance, farad
Q = C*V;        // Charge on the plates of capacitor, C
printf("\nCapacitance = %5.3e F ", C);
printf("\nCharge on the plates of capacitor = %3.3e C", Q);

// Result
//  Capacitance = 8.854e-12 F
//  Charge on the plates of capacitor = 8.854e-10 C 
