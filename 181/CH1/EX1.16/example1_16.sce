// Calculate drift velocity in copper
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-16 in page 47

clear; clc; close;

// Data given
tou=10^-14; // Relaxation time in s
m_c=0.02*9.1*10^-31; // Effective mass of electron in Kg
E_0=0.1; // Electric field across conductor in V/m
e=1.6*10^-19; // Charge on an electron in C

// Calculation
V_0=(e*E_0*tou)/m_c;

printf("The drift velocity of electrons in copper is %0.3f m/s",V_0);

// Result
// Drift velocity of electrons in copper is 0.009 m/s