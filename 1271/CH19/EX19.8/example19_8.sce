clc 
// Given that
k = 1.38e-23 // Boltzmann's constant in J/K
h = 6.62e-34 // Planck constant in J sec
Tc = 4.2 // critical temperature of Hg in K
c = 3e8 // speed of light in m/sec 
// Sample Problem 8 on page no. 19.16
printf("\n # PROBLEM 8 # \n")
printf("Standard formula used \n ")
printf(" E = 3 * k * Tc \n")
E = 3 * k * Tc
lambda = h * c / E
printf("\n Energy gap is %e eV.\n Wavelength of photon is %e m.\n From the value of above lambda it is clear that these photons are in the very short wavelength part of the microwave region.",E/1.6e-19,lambda)
