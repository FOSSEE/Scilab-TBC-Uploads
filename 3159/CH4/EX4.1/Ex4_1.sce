// Calculate frequency and wavelength of radiation
clc
E = 1.64e-18 // energy difference between two states in J
h= 6.626e-34 // planks constant
c = 2.998e8 // speed of light in m/s
printf("\n Example 4.1")
nu = E/h
lambda = c/nu
printf("\n Frequency of emitted radiation is %.2e Hz",nu)
printf("\n Wavelength of emitted radiation is %.2e m \n\t \tor\t\t %d angstrom",lambda,lambda*1e10)// answer in book is 1210 angstrom

