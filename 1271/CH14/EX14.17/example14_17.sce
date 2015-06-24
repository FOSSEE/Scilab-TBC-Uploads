clc 
// Given that
lambda = 1.5e-7 // wavelength of light in in meter
w = 4.53 // work function of tungsten in eV
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
// Sample Problem 17 on page no. 14.26
printf("\n # PROBLEM 17 # \n")
printf(" Standard formula used \n ")
printf(" E = (h * c)/lambda = 1/2*m*v^2 \n ")
E = ((h * c) / lambda) * (1 / e)
k = E - w
printf("\n Energy of incident photon is %f eV,which is greater than the work function \n So it causes photoelectric emission.\n Kinetic energy of the emitted electron is %f eV.",E,k)
                                                               
