clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.48
// Page 301
printf("Example 5.48, Page 301 \n \n");

// solution
// basis 100 kg of sol with 32% N
MNH4NO3 = 80.0434
MNH2CONO2 = 60.0553
MN2 = 28.0134
na = 32/(60.9516)
Ureadis = 1.1758*na*MNH2CONO2  // kg
water = 100-(na*MNH4NO3+Ureadis)
ndis = 525
m = ndis/water
HE1 = 40.3044-2.5962*m+.1582*m^2-3.4782*10^-3*m^3
HE = HE1*ndis
printf("Heat effect of the sol = "+string(HE)+" kJ.")
