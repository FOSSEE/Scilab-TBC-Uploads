// Scilab code Ex14.2: Pg 509 (2005)
clc; clear;
roh = 2.7e+06;   // Density of Al, g/cm^3
A = 27;   // Mass number of Al
n = (6.02e+23*roh)/A;    // Number of nuclei/m^3
sigma = 2.0e-31;    // Effective area of nucleas normal to motion, m^2
R_0 = 5.0e+12;      // Rate of incident particles per unit area, neutrons/cm^2-s
x = 0.30e-03;       // Thickness of foil, m
R = (R_0*sigma*n*x) // Number of neutrons captured by foil, neutrons/cm^2-s
printf("\nThe number of neutrons captured by foil = %3.1fe+07 neutrons/Sq.cm-s", R*1e-07);

// Result
// The number of neutrons captured by foil = 1.8e+07 neutrons/Sq.cm-s 