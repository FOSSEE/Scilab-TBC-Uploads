// Scilab Code Ex8.5: Page-8.35 (2004)
clc;clear;
mu = 9.4e-24;    // Magnetic moment, ampere metre square
H = 2;  //  Magnetic field , weber per squaremetre 
k = 1.38e-23;   // Boltzmann Constant, joule per kelvin
T = (2*mu*H)/(log(2)*k);  //Temperature using classical statistics, K

printf("\nTemperature using classical statistics = %3.1f K", T);

// Result
// Temperature using classical statistics = 3.9 K 
