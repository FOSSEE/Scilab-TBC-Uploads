// Width of depletion zone at 300K
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-2 in page 83

clear; clc; close;

// Given data
N_d=10^16; // Donor concentration /cm^3
N_a=5*10^18; // Acceptor concentration /cm^3
ni=1.5*10^10; // Intrinsic concentration /cm^3
e=1.6*10^-19; // Charge on an electron in C
epsln=11.8*8.85*10^-14; // Constant of calculation

// Calculation
V_0=0.0259*log((N_d*N_a)/(ni^2));
printf("The height of the barrier energy is %0.2f V\n",V_0);

W=sqrt(2*((epsln*V_0)/(e)*((1/N_a)+(1/N_d))));
printf("Width of depletion zone is %0.3e cm",W);

// Result
// The height of the barrier energy is 0.86 V
// Width of depletion zone in n-type Si is 3.354*10^-5 cm