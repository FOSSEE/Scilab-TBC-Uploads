// To prove,resistivity is 45 ohm-cm
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-28 in page 53

clear; clc; close;

// Data given
ni=2.5*10^13; // Intrinsic concentration /cm^3
mu=5600; // Sum of mobilities of holes and electrons
e=1.6*10^-19; // Charge on an electron in C 

// Calculation
sigma=e*ni*mu;
printf("Conductivity of germanium is %0.3f (s/cm)^-1\n",sigma);
rho=1/sigma;
printf("Therefore resistivity is %0.1f ohm-cm",rho);

// Result
// Conductivity of germanium = 0.0232 (s/cm)^-1
// Resistivity = 44.6 ohm-cm