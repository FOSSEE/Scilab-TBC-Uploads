clc 
// Given that
E = 3e4 // external field in V/m
k = 1.00074 // dielectric constant of gas at N.T.P.
e_ = 8.85e-12 // electric permittivity of air in C^2/Nm^2
// Sample Problem 5 on page no. 9.12
printf("\n # PROBLEM 5 # \n")
printf(" Standard formula used \n")
printf(" P=x*e_*E.\n\n ")
x = k-1
P = x*e_*E
N = 6.023e23/22.4e-3
p = P/N
printf("Induce dipole moment of each is %e C-m",p)
