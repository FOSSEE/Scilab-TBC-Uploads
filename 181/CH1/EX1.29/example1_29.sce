// Find conductivity of intrinsic germanium
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-29 in page 53

clear; clc; close;

// Data given
ni=2.5*10^13; // Intrinsic concentration /cm^3
e=1.6*10^-19; // Charge on an electron in C
mu_n=3800; // Mobility of electrons in cm^2/Vs
mu_p=1800; // Mobility of holes in cm^2/Vs
N_D=4.41*10^15; // Concentration of donor atoms in Ge /cm^3

// Calculation
sigma=(ni*e)*(mu_n+mu_p);
printf("(a)Intrinsic conductivity=%0.4f s/cm\n",sigma);
p_0=(ni^2)/N_D;
printf("p_0=%0.2e /cm^3\n",p_0);
sigma1=N_D*e*mu_n;
printf("(b)Since n_0>p_0, Conductivity=%0.2f s/cm\n",sigma1);
n_0=(ni^2)/N_D;
printf("With given acceptor impurity,\nn_0=%0.2e /cm^3\n",n_0);
sigma2=N_D*e*mu_p;
printf("(c)Since p_0>n_0, Conductivity=%0.2f s/cm",sigma2);

// Result
// (a) Conductivity in first case is 0.0224 s/cm
// (b) Conductivity in second case is 2.68 s/cm
// (c) Conductivity in third case is 1.27 s/cm