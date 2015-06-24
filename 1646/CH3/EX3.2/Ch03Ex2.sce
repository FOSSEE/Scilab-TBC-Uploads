// Scilab Code Ex3.2 : Page:132 (2011)
clc;clear;
A = 32;     // Gram atomic mass of oxygen, g/mol
N_A = 6.023e+026;   // Avogadro's number, per kmol
m = A/N_A;....//mass of the molecule, kg
k_B = 1.38e-23;....// Boltzmann constant, J/K 
T = 273;....// Temperature of the gas, K
v_av = 1.59*sqrt(k_B*T/m);....// Average speed of oxygen molecule, m/s
printf("\nThe average speed of oxygen molecule is = %3d m/s", v_av);
v_rms = 1.73*sqrt(k_B*T/m);....// The mean square speed of oxygen molecule, m/s 
printf("\nThe root mean square speed of oxygen gas molecule is = %3d m/s", ceil(v_rms))
v_mp = 1.41*sqrt(k_B*T/m);....// The most probable speed of oxygen molecule, m/s 
printf("\nThe most probable speed of oxygen molecule is = %3d m/s", ceil(v_mp));

// Result
// The average speed of oxygen molecule is = 423 m/s
// The root mean square speed of oxygen gas molecule is = 461 m/s
// The most probable speed of oxygen molecule is = 376 m/s 
