// Scilab code Ex11.27: Pg.544 (2008)
clc; clear;
t_half = 5730;    // Half life-time of C-14, y
lamda = log(2)/t_half;    // Decay constant, per y
N_A = 6.02e+023;    // Avagadros number, atoms/mole
M = 12;    // Molar mass of C-12, g
N_C_12 = N_A/M    // Number of C-12 nuclei
r = 1.35e-12;    // Ratio of C-14 nuclei to C-12 nuclei
N_C_14 = r*N_C_12;    // Number of C-14 nuclei
s = 3.16e+07;    // Approximate no. of seconds in one year, s
R = lamda*N_C_14/s    // Decay rate, decays/min-g
printf("\nThe decay rate of C-14 per gram of carbon in living organism = %4.1f decays/min-g", R*60);

// Result
// The decay rate of C-14 per gram of carbon in living organism = 15.6 decays/min-g 