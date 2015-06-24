// Calculate height of potential-energy barrier
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-1 in page 77

clear; clc; close;

// Given data
rho1=1.5; // Resistivity of p-side of Ge diode in ohm-cm
rho2=1; // Resistivity of n-side of Ge diode in ohm-cm
e=1.6*10^-19; // Charge on an electron in C
mu_p=1800; // Mobility of holes
mu_n=3800; // Mobility of electrons

// Calculation
N_A=1/(rho1*e*mu_p);
N_D=1/(rho2*e*mu_n);
printf("(a) rho = 2 ohm-cm\n");
printf("N_A=%0.2e /cm^3\n",N_A);
printf("N_D=%0.2e /cm^3\n",N_D);
printf("The height of the potential energy barrier is:\n");
V_0=0.026*log((N_A*N_D)/(2.5*10^13)^2);
printf("V_0=%0.3f eV\n\n",V_0);
printf("(b)For silicon:\n");
N_A1=1/(rho1*e*500);
N_D1=1/(2*e*1300);
printf("N_A=%0.2e /cm^3\n",N_A1);
printf("N_D=%0.2e /cm^3\n",N_D1);
V_01=0.026*log((N_A1*N_D1)/(1.5*10^10)^2);
printf("The height of the potential energy barrier is:\n");
printf("V_0=%0.3f eV",V_01);

// Result
// (a) For Ge, V_0 = 0.226 eV 
// (b) For Si, V_0 = 0.655 eV
