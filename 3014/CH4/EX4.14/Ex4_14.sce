 
clc 
//Given that
m = 32 // Atomic weight of sulphur
d = 2.08 // Density in g/cm^3
alpha_e = 3.5e-40 // Electronic polarizability in Fm^2
N_a = 6.022e23 // Avogadro Number
epsilon_0 = 8.85e-12 // Permittivity of free space

printf("Example 4.14")
N = N_a*d*1e6/m // Calculation of Atoms per unit 
k = N*alpha_e/(3*epsilon_0)

epsilon_r = (1+ k*2)/(1-k)// Calculation of relative permittivity
printf("\n Relative permittivity is %f\n\n\n",epsilon_r)
// Answer in book is 4.17
