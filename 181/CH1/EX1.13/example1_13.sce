// Compute conductivity,drift velocity,current density
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-13 in page 47

clear; clc; close;

// Data given
mu=35.2*10^-4; // Mobility of electrons in m^2/Vs
n_0=7.87*10^28; // Number of free electrons per cubic meter
e=1.6*10^-19; // Charge on an electron in C
E_0=30*10^2; // External electric field applied in V/m

// Calculation
sigma=n_0*e*mu;
printf("(a)Mobility = %0.1e m^2/Vs\n",mu);
printf("Conductivity of the specimen is %0.2e s/m\n\n",sigma);
V_0=mu*E_0;
J=sigma*E_0;
printf("(b)Electric field Eo = %0.0e V/m\n",E_0);
printf("Drift velocity of free electrons is %0.2f m/s\n",V_0);
printf("Current density is %0.2e A/meter^3",J);

// Result
// (a) Conductivity of specimen is 4.43*10^7 s/m
// (b) Drift velocity of free electrons is 10.56 m/s
// (c) Current density is 13.3*10^10 A/meter cube