// Example 9.8
clear all;
clc;

// Given data
phi_n = 20;                               // Given neutron flux in neutrons/cm^2-sec
// From Figure 9.12
// To receive an dose equivalent rate of 1 mrem/hr, the fast neutron flux is 7 neutrons/cm^2-sec
phi_n_eq = 7;
D_dot_eq = 1; 
D_dot_n = (phi_n*D_dot_eq)/phi_n_eq;      // Dose rate due to fast neutron flux in mrem/hr
phi_th = 300;                             // Given thermal flux in neutrons/cm^2-sec
// From Figure 9.12
// To receive an dose equivalent rate of 1 mrem/hr, the thermal flux is 260 neutrons/cm^2-sec
phi_th_eq = 260;
D_dot_th = (phi_th*D_dot_eq)/phi_th_eq;  // Dose rate due to thermal neutron flux in mrem/hr
D_dot = D_dot_n+D_dot_th;               // Total dose rate in mrem/hr
printf("\n The permitted weekly dose is 100 mrem \n");
D_dot_perm = 100;
// Calculation
t = D_dot_perm/D_dot;
printf(" \n The time of exposure upto a safe level = %.1f hour \n",t);
// The answer given in the textbook is wrong. This is because of wrong computation of total dose rate
