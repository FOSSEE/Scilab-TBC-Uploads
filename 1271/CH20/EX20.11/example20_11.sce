clc 
// Given that
V1 = 44e3 // voltage in first case in V
V2 = 50e3 // voltage in second case in V
lambda1 = 0.284e-10 // shortest wavelength in first case in m
lambda2 = 0.248e-10 // shortest wavelength in second case in m
e = 1.6e-19 // charge on an electron in C
c = 3e8 // speed of light in m/sec
// Sample Problem 11 on page no. 20.10
printf("\n # PROBLEM 11 # \n")
printf("Standard formula used \n ")
printf(" h*c/Lambda = eV \n")
h1 = e * V1 * lambda1 / c
h2 = e * V2 * lambda2 / c
printf("\n Planck constant is %e J sec if shortest wavelength is %e m .\n Planck constant is %e Jsec if shortest wavelength is %e m. ",h1,lambda1,h2,lambda2)
