// Scilab code Ex7.1: Pg:275 (2008)
clc;clear;
M_He = 4.001265;    // Mass of helium nucleus, amu
M_P = 1.007277;    // Mass of proton, amu
M_N = 1.008666;    // Mass of neutron, amu
amu = 931.4812;    // One amu
M = 2*M_P+2*M_N;    // Total initial mass of two protons and two neutrons, amu
delta_m = M-M_He;    // Mass defect, amu
BE = delta_m * amu;    // Binding energy of alpha particle, MeV
printf("\nThe binding energy of an alpha particle = %7.4f Mev", BE);
printf("\nThe binding energy per nucleon = %8.6f Mev", BE/4);

// Result 
// The binding energy of an alpha particle = 28.5229 Mev
// The binding energy per nucleon = 7.130721 Mev 