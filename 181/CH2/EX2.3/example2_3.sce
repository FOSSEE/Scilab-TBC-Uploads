// Find thermal and barrier volatge
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-3 in page 84

clear; clc; close;

// Given data
T=303; // Temperature in K
ni=1.5*10^16; // Intrinsic concentration /cm^3
e=1.6*10^-19; // Charge on an electron in C
k_BT=1.38*10^-23; // Measured in eV at 303K
N_A=10^22; // Acceptor concentration /cm^3
N_D=1.2*10^21; // Donor concentration /cm^3

// Calculation
V_T=(k_BT*T)/e;
printf("Thermal voltage = %0.2e V\n",V_T);
ni1=ni^2;
printf("ni^2 = %0.3e\n",ni1);
V_0=V_T*log((N_A*N_D)/(ni1));
printf("Barrier voltage = %0.3f V",V_0);

// Result
// Thermal voltage = 26.1 mV
// Barrier voltage = 0.635 V