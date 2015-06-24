
clc 
//Given that
alpha_e = 2e-40 // Electronic polarisability in Fm^2
N = 4e28 // density in atoms/m^3
epsilon_0 = 8.85e-12 // Permittivity of free space

printf("Example 4.9")
epsilon_r = 1+ N*alpha_e/(epsilon_0) // Calculation of relative permittivity
printf("\n Relative permittivity is %f\n\n\n",epsilon_r)


 
