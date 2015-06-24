// Scilab Code Ex7.3:  Page-7.25 (2004)
clear;clc;
er = 2.56;   // Relative permittivity
tan_deta = 0.7e-4;  // Loss tangent
f = 1e+6;   // frequency, Hz
er2 = er*tan_deta;  // Imaginary part of relative permittivity
A = 8e-4;   // Area between plates, squaremetre
eo = 8.854e-12; //Permittivity of the free space, farad per metre
w = 2*%pi*f;    // angular frequency, Hz
d = 0.08e-3;    // Distance between plates, m
Rp = d/(w*eo*er2*A);    // Parallel loss resistance, ohm
Cp = A*eo*er/d;         // Capacitance , farad

printf("\nParallel loss resistance = %3.3e ohm", Rp);
printf("\nCapacitance  = %3.3e farad", Cp);

// Result
//Parallel loss resistance = 1.003e+07 ohm
//Capacitance  = 2.267e-10 farad 
