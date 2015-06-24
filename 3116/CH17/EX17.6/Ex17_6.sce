


//page no 649
clc
// given that
p1 = 1e22 // Number of electrons per unit volume
e = 1.6e-19 // Charge on electron in coulomb
mu_h1 = 0.04 // concentration of holes mobility in m^/Vs
sigma_d = 50 // Desired conductivity in (ohm-m)^-1
p2 = 1e21// Number of electrons per unit volume
mu_h2 = 0.045// concentration of holes mobility in m^/Vs
p3 = 8e21// Number of electrons per unit volume
mu_h3 = mu_h1// concentration of holes mobility in m^/Vs
N_a = 6.023e23 // Avogadro’s constant
rho_si = 2.33e6 // density of silicon in g/m^3
A_si = 28.09 // molecular weight in g/mol
printf("\n Design Example 17.1\n")
sigma1 = p1*e*mu_h1
sigma2 = p2*e*mu_h2
sigma3 = p3*e*mu_h3
N_Si = N_a*rho_si/A_si
Ca  = p3*100/(p3+N_Si)
printf("\n Silicon material of p-type of conductivity %d (ohm-m)^-1 \n must have %.2e%% doping material",sigma_d,Ca)

