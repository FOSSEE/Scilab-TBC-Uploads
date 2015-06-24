clc 
// Given that
w = 4.8 // work function in eV
lambda1 = 5e-7 // wavelength of incident radiation in first case in meter
lambda2 = 2e-7 // wavelength of incident radiation in second case in meter
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
// Sample Problem 13 on page no. 14.24
printf("\n # PROBLEM 13 # \n")
printf("Standard formula used \n ")
printf(" E_k = h*c/lambda \n")
E_k1 = h*c/lambda1
E_k2 = h*c / lambda2
printf("\n From the above it is clear that the energy corresponding to wavelength 5000 A is i.e. %f found to be less than the work function i.e. 4.8 eV . So it will not be able to liberate an electron.\n As the energy to wavelength 2000 A i.e. %f is greater than the work function. So it is sufficient to liberate electrons. ",E_k1/e,E_k2/e)
                                                               
