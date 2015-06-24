
clc 
//Given that
r = 0.055 // Radius of hydrogen atom in nm
n = 9.8e26 // Number of atoms/cc

epsilon_0 = 8.854e-12 // Permittivity of free space

printf("Example 4.6")
alpha_e = 4*%pi*epsilon_0*(r*1e-9)^3 // Calculation of electronic polarisability
epsilon_r = 1+n*alpha_e/epsilon_0 // Calculation of relative permeability

printf("\n Electronic polarisability is %eFm^2 \n Relative permeability is %f \n\n\n",alpha_e,epsilon_r)


 
