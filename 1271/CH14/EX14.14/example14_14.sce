clc 
// Given that
lambda = 5.893e-7 // wavelength of light in meter
V = 0.36 // stopping potential for emitted electron in eV
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of an electron in kg 
// Sample Problem 14 on page no. 14.25
printf("\n # PROBLEM 14 # \n")
printf("Standard formula used \n ")
printf(" E_k = h*mu - phi \n")
E = h * c / lambda
w = ((h * c) / lambda) * (1 / e) - V
f = w * e / h
printf("\n Maximum energy is %f eV.\n Work function is %f eV.\n Threshold frequency is %e Hz. ",E/e,w,f)
                                                               
