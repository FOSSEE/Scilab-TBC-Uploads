
clc 
//Given that
epsilon_r = 1.000074 // Dielectric constant of He at 0C and 1atm
epsilon_0 = 8.854e-12 // Permittivity of free space
E = 100 // Electric field in V/m
n = 2.68e27 // Electron density in no,/m^
N_a = 6e23 // Avogadro number
V = 22.4 // Volume at STP in litter
printf("Example 4.4")
P = epsilon_0*(epsilon_r-1)*E // Calculation of polarization

N = N_a/(V*1e-3)// Calculation of total number of atoms
p = P/N // dipole moment per atom
printf("\n Dipole moment per atom is %e Coulomb-meter \n\n\n",p)
// Answer in book is in different form and as 24.45e-40 coulomb-meter
