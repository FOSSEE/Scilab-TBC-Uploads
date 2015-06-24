// Height of potential energy barrier
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-29 in page 104

clear; clc; close;

// Given data
rho1=2; // Resistivity of p-side in ohm-cm
rho2=1; // Resistivity of n-side in ohm-cm
e=1.6*10^-19; // Charge on an electron in C

// Calculation
N_A1=1/(rho1*e*1800); 
N_D1=1/(rho2*e*3800); 
N_A2=1/(rho1*e*500);
N_D2=1/(rho2*e*1300); 
V_01=0.026*log((N_A1*N_D1)/(2.5*10^13)^2);
V_02=0.026*log((N_A2*N_D2)/(1.5*10^10)^2);
printf("(a)For Ge:\n");
printf("N_A = %0.2e /cm^3\nN_D = %0.2e /cm^3\n",N_A1,N_D1);
printf("Therefore barrier potential energy for Ge = %0.2f eV\n\n",V_01);
printf("(b)For Si:\n");
printf("N_A = %0.2e /cm^3\nN_D = %0.2e /cm^3\n",N_A2,N_D2);
printf("Therefore barrier potential energy for Si = %0.3f eV",V_02);

// Result
// (a) Height of barrier potential energy for Ge = 0.22 eV
// (b) Height of barrier potential energy for Si = 0.667 eV