

clc
// given that
n = 2 // number of repeated units within unit cell
A_c = 12.01  // molar mass of carbon
A_h = 1.008 // molar mass of hydrogen
a = 0.741 // edge length in x axis in nm
b = 0.494 // edge length in y axis in nm
c = 0.255 // edge length in z axis in nm
N_a = 6.023e23 // Avogadro constant
rho_s = 0.925 // density of branched polyethylene in g/cm^3
rho_a = 0.870 // density of totally amorphous polyethylene in g/cm^3
printf("Example 4.7\n")
printf(" \n Part A:")
A = 2*A_c+4*A_h // Molar mass of polyethylene
V_c = a*b*c*(1e-7)^3 // Volume of unit cell
rho_c = (n*A)/(V_c*N_a)

printf("\n Density of totally crystalline polyethylene is %0.3f g/cm^3 .",rho_c)
printf(" \n\n Part B:")
per_cry = (rho_c*(rho_s-rho_a))*100/(rho_s*(rho_c-rho_a))
printf("\n Percentage crystallinity is %0.1f%%", per_cry)


