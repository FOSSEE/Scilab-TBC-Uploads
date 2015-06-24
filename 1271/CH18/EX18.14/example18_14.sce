clc 
// Given that 
w = 168.5 // molecular weight 
d = 4370 // density of material in kg/m^3
H = 2e5 // magnetic field in A/m
T = 300 // room temperature in K
mu_ = 4 * %pi * 1e-7 // magnetic permittivity of space]
NA = 6.02e26 // Avogadro no. in per kg
mu_b = 9.24e-24 // Bohr magnetons in Am^2
k = 1.38e-23 // Boltzmann's constant in J/K
// Sample Problem 14 on page no. 18.26
printf("\n # PROBLEM 14 # \n")
printf("Standard formula used \n ")
printf("  Chi = mu_0*N*M^2 /(3*k*t) \n")
N = d * NA / w
X = (mu_ * N * (2 * mu_b)^2) / (3 * k * T)
I = X * H
printf("\n Magnetisation is %f A/m",I)
