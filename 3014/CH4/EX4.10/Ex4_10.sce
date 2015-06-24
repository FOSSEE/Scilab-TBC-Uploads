clc 
//Given that
epsilon = 2.4e-10 // permitivity of a  dielectric material in C^2/N?m^2
epsilon_0 = 8.854e-12 // Permittivity of free space

printf("Example 4.10")
K = epsilon/epsilon_0  // Calculation of dielectric constant 
zai_e = epsilon_0*(K-1) // Calculation of electrical susceptibility 

printf("\n Relative permittivity is %f",K)
printf("\n Electrical susceptibility is %e C^2/Nm^2\n\n\n",zai_e)

