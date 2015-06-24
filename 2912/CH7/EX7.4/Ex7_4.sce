//chapter 7
//example 7.4
//Calculate the dipole moment induced in each atom and atomic polarisability
//page 188-189
clear;
clc;
//given
K=1.000134; // di-elecrtic constant of the neon gas at NTP
E=90000; // in V/m (electric field)
Eo=8.85E-12; // in C/N-m^2 (absolute premittivity)
N_A=6.023E26; // in atoms/Kg-mole (Avogadro's number)
V=22.4; // in m^3 (volume of gas at NTP
//calculate
n=N_A/V; // calculaton of density of atoms
// Since P=n*p=(k-1)*Eo*E
// therefore we have
p=(K-1)*Eo*E/n; // calculation of dipole moment induced
printf('\nThe dipole moment induced in each atom is \tp=%1.2E C-m',p);
alpha=p/E; // calculation of atomic polarisability
printf('\n\nThe atomic polarisability of neon is \t=%1.2E c-m^2/V',alpha);
// NOTE: The answer of atomic polarisability is wrong due to printing error
