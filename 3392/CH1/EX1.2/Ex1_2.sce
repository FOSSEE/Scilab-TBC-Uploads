clc
// initialization of variables
clear
sigma=500 // Stress M Pa
eps=0.0073 // Strain
sigma_A=343 // M Pa from figure 1.9
eps_A=0.00172 // from figure 1.9
// part (a)
E=sigma_A/eps_A

// part (B)
eps_e=sigma/E
eps_p=eps-eps_e
// results
printf(' part (a) \n')
printf(' The modulus of elasticity of the rod is E = %.d G Pa',E/1000)
printf('\n part (b)')
printf('\n the permanent strain is = %.4f',eps_p)
printf('\n and the strain recovered is = %.4f',eps_e)
