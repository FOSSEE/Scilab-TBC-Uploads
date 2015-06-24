// Calculate drift velocity
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-12 in page 46

clear; clc; close;

// Data given
m_c=0.067*0.91*10^-30; // Effective electron mass in Kg
e=1.6*10^-19; // Charge on an electron in C
E_0=10^5; // External electric field in KV/m
tou1=10^-13; // First Brillouin zone time in s
tou2=10^-12; // Second Brillouin zone time in s
tou3=10^-11; // Third Brillouin zone time in s

// Calculation
v_01=(e*tou1*E_0)/m_c;
v_02=(e*tou2*E_0)/m_c;
v_03=(e*tou3*E_0)/m_c;

printf("(a)Drift velocity in first case is %0.2e m/s\n",v_01);
printf("(b)Drift velocity in second case is %0.2e m/s\n",v_02);
printf("(c)Drift velocity in third case is %0.2e m/s",v_03);

// Result
// (a) Drift velocity in first case is 2.62*10^4 cm/s
// (b) Drift velocity in second case is 2.62*10^5 cm/s
// (c) Drift velocity in third case is 2.62*10^6 cm/s
