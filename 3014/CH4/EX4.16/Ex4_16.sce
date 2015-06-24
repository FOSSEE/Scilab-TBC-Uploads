
 
clc 
//Given that
m = 32 // Atomic weight of sulphur
d = 2050 // Density in Kg/m^3
N_a = 6.022e23 // Avogadro Number
epsilon_0 = 8.85e-12 // Permittivity of free space
epsilon_r = 3.75 // Dielectric constant of sulphur

printf("Example 4.16")
N = N_a*d*1e3/m // Calculation of Atoms per unit 
alpha_e = 3*epsilon_0*((epsilon_r-1)/(epsilon_r+2)) / N 


printf("\n Electronic polarizability  is %e Fm^2\n\n\n",alpha_e)
