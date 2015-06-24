// Calculate intrinsic carrier density
clc
rho = 3000 // resistivity in ohm m
mu_e = 0.14
mu_h = 0.05 
e = 1.602e-19 // charge on electron
printf("\n Example 15.1")
sigma = 1/rho
n = sigma/((mu_e+mu_h)*e)
printf("\n Intrinsic carrier density is %.3e m^-3",n)
