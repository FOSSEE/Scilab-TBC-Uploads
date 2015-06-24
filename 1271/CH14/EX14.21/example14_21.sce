clc 
// Given that
lambda = 3.5e-7 // wavelength of light in meter
i = 1 // intensity in W/m^2
p = 0.5 // percent of incident photon produce electron
a = 1 // surface area of potassium in cm^2
w = 2.1 // work function of potassium in eV
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of an electron in kg 
// Sample Problem 21 on page no. 14.28
printf("\n # PROBLEM 21 # \n")
printf("Standard formula used \n ")
printf(" 1/2*m*v^2 = (h * c)/ lambda\n")
E = (((h * c) / lambda) * (1 / e) - w) * e
E_ = (p * a * 1e-4) / 100 // in W/cm^2
n = E_ / E
printf("\n Maximum kinetic energy is %e J.\n Number of electrons emitted per sec from 1cm^2 area is %e .",E,n)
                                                               
