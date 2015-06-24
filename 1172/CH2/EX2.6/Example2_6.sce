clc
// Given That
E_0 = 300 // maximum electric field in electromagnetic wave in w/m
v = 2e8 // speed of moving electron in m/s along y - axis
c = 3e8 // speed of light in m/s
q = 1.6e-19 // charge on electron in coulomb
//Sample Problem 6 Page No. 81
printf ("\n # Problem 6 # \n ")
B_0  = E_0 / c // calculation of magnitude of maximum magnetic field
F_e = q*E_0 // calculation of electromagnetic force on electron in N
F_b = q*v*B_0 // calculation of magnetic force on electron in N
 printf ("The maximum electric force on electron is  %e N along y -axis \n", F_e) 
 printf("The maximum magnetic force on electron is  %e N along z - axis\n", F_b)

