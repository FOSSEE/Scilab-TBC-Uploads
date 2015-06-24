// Concentration of holes and electrons
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-27 in page 52

clear; clc; close;

// Data given
sigma=100; // Conductivity of p-type germanium
e=1.6*10^-19; // Charge on an electron in eV
mu_p=1800; // Mobility of holes in cm^2/Vs
ni=2.5*10^13; // Number of intrinsic atoms in germanium
mu_n=1300; // Mobility of electrons in cm^2/Vs
sigma1=0.1; // Conductivity in n-type silicon in /ohm-cm
ni1=1.5*10^10; // Number of intrinsic atoms in silicon
P_p=3.47*10^17; // Constant of calculation

// Calculation
printf("For Germanium:\n");
p_0=sigma/(e*mu_p);
n_0=(ni^2)/P_p;
printf("(a)Concentration of holes is %0.2e cm^-3\n",p_0);
printf("(b)Concentration of electrons is %0.2e m^-3\n",n_0);
printf("For Silicon:\n");
n_0=sigma1/(e*mu_n);
p_0=(ni1^2)/(4.81*10^14);
printf("(c)Concentration of electrons is %0.2e cm^-3\n",n_0);
printf("(d)Concentration of holes is %0.2e m^-3",p_0);

// Result
// (a) For Ge,Hole conc. = 3.47*10^17 cm^-3, Electron conc. = 1.8*10^15 m^-3
// (b) For Si,Hole conc. = 4.68*10^5 cm^-3, Electron conc. = 4.81*10^14 cm^-3