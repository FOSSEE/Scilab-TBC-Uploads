 
clc 
//Given that
alpha_e = 1.5e-40 // Electronic polarizability in Fm^2
N = 4e28 // density in atoms/m^3
epsilon_0 = 8.85e-12 // Permittivity of free space

printf("Example 4.13")
k = N*alpha_e/(3*epsilon_0)
epsilon_r = (1+ k*2)/(1-k)// Calculation of relative permittivity
printf("\n Relative permittivity is %f\n\n\n",epsilon_r)

