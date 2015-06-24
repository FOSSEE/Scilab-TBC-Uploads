// Find depletion layer capacitance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-5 in page 86

clear; clc; close;

// Given data
epsln=12/(36*%pi*10^11); // Constant for Si in F/cm
A=8.11058*10^-1; // Cross sectional area in m^2
mu_p=500; // Mobility of holes
e=1.6*10^-19; // Charge on an electron in C
V_j=4.9; // Junction potential in V

// Calculation
printf("(a)We have C_t/A = sqrt((e*epsnl)/2)*sqrt(Na/Vj)\n");
K=sqrt((e*epsln)/2);
printf("sqrt((e*epsln)/2) = %0.2e\n",K);
printf("Hence C_t = %0.2e * sqrt(Na/Vj) F/cm^2\n",K);
K1=K*10^12;
printf("Or C_t = %0.2e * sqrt(Na/Vj) pF/cm^2\n",K1);
N_A=1/(3*mu_p*e);
C_T=(2.9*10^-4)*sqrt(N_A/V_j)*(8.14*10^-3);
printf("(b)The depletion layer capacitance = %0.2f pF",C_T);

// Result
// (a) The expression for depletion layer capacitance is proved
// (b) The depletion layer capacitance in silicon is 68.84 pF