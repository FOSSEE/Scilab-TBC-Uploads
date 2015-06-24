// Calculate surface energy of copper crystal of type {111}
clc
E = 56.4 // bond energy in KJ
N_a = 6.023e23 // Avogadro’s number
n = 12 // number of bonds
m = 3 // number of broken bonds 
N = 1.77e19 // number of atoms in copper crystal of type {111} per m^2
printf("\n Example 6.5")
b_e = 1/2*E*1e3*n/N_a // bond energy per atom
e_b = b_e*m/n // energy of broken bond at surface
s_e = e_b*N // surface enthalpy of copper
printf("\n Surface enthalpy of copper is %0.2f J m^-2",s_e)
printf("\n Surface enthalpy of copper is %d erg cm^-2",s_e*1e3)
// Answer in book is 2490 erg cm^-2

