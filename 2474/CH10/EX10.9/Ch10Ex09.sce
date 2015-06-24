// Scilab code Ex10.9: Pg.450 (2008)
clc; clear;
V_H = 1.64e-06;    // Hall voltage, V
q = 1.6e-19;    // Electronic charge, C
t = 250e-06;    // Thickness of Al strip, m
i = 25;    // Current through strip, A
B = 0.55;    // Magnetic field, T
M = 26.98;    // Molar mass of Al, kg/mol
rho = 2.72e+03;    // Density of Al, kg/m^3
N_A = 6.02e+26;    // Avagadro's number
n = i*B/(q*t*V_H);    // Density of charge carriers, per m^3
N = N_A*rho/M;    // Density of charge carriers in Al, per m^3
n_c = n/N;    // Average no. of charge carriers provided by each atom
printf("\nThe density of charge carriers in Al = %4.2e carriers per m^3", n);
printf("\nThe average number of charge carriers provided by each atom = %3.1f charge carriers", n_c);

// Result
// The density of charge carriers in Al = 2.10e+029 carriers per m^3
// The average number of charge carriers provided by each atom = 3.5 charge carriers 