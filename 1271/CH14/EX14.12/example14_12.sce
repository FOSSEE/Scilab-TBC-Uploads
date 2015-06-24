
clc 
// Given that
lambda = 3.132e-7 // wavelength of light in meter
V = 1.98 // stopping potential in V
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of an electron in kg 
// Sample Problem 12 on page no. 14.24
printf("\n # PROBLEM 12 # \n")
printf("Standard formula used \n ")
printf(" 1/2 m*v^2 = h*(mu - mu_0) \n")
E = e * V
lambda_ = 1 / ((1 / lambda) - (E / (h * c)))
f = c / lambda_
w = ((h * c) / lambda_)
printf("\n Work function is %e J.\n Maximum energy is %e J.\n Threshold frequency is %e Hz.",w,E,f)
