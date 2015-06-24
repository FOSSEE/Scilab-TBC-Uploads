 
clc 
//Given that
epsilon_0 = 8.854e-12 // Permittivity of free space
E = 2000 // Electric field in V/m
P = 6.4e-8 // Polarization in C/m^2
printf("Example 4.8")
epsilon_r = 1+ P/(epsilon_0*E) // Calculation of relative permittivity

printf("\n Relative permittivity is %f\n\n\n",epsilon_r)

 
