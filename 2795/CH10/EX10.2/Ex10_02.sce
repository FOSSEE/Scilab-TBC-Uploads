
// Scilab Code Ex10.2 : Page-343 (2014)
clc; clear;
h = 6.626e-034;    // Planck's constant, Js
e = 1.6e-019;    // Energy equivalent of 1 eV, J
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
k = 1.38e-023;    // Boltzmann constant, J/K
u = 1.67e-027;    // Mass equivalent of 1 amu, kg
m1 = 34.97*u;    // Atomic mass of chlorine atom, kg
m2 = 1.008*u;    // Atomic mass of hydrogen atom, kg
mu = m1*m2/(m1 + m2);    // Reduced mass of the HCl system, kg
delta_E = 0.36;    // Spacing between vibrational energy levels of the HCl molecule, eV
omega = delta_E*e/h_bar;    // Angular frequency of vibration, rad/s
kapa = mu*omega^2;    // Effective force constant for HCl molecule, N/m
T = delta_E*e/k;    // Classical temperature associated with the rotational energy spacing, K

printf("\nThe effective force constant for HCl molecule = %3d N/m", ceil(kapa));
printf("\nThe classical temperature associated with the rotational energy spacing = %4d K", ceil(T));

// Result
// The effective force constant for HCl molecule = 489 N/m
// The classical temperature associated with the rotational energy spacing = 4174 K 
// The answers are given wrong in the textbook