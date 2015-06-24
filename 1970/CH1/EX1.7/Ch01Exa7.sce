// Scilab code Exa1.7 : : Page 53 (2011)
clc; clear;
M = 20*1.66054e-027;        //
v = 10^5;            // Speed of the ion, metre per sec
B = 0.08;        // Magnetic field, tesla
e = 1.60218e-019;   // Charge of an electron, C
n = 1;              // Number of the ion
R_20 = M*v/(B*n*e)  // Radius of the neon-20, metre
R_22 = 22/20*R_20;  // Radius of the neon-22, metre
printf("\nRadius of the neon-20 : %5.3f metre \nRadius of the neon-22 : %5.3f metre", R_20, R_22);

// Result
// Radius of the neon-20 : 0.259 metre 
// Radius of the neon-22 : 0.285 metre 
