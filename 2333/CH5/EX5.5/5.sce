clc 
k = 12400 // constant
lambda = 6943 // wavelength of radiation in angstrom
n = 3e19 // Total number of ions
// Sample Problem 5 on page no. 243
printf("\n # PROBLEM 5 # \n")
E = k/(lambda) // Energy difference
E_total = E*n*1.6e-19 // Total Energy emitted 
printf("\n Energy of one photon  is %feV. \n Total energy is %fJ",E,E_total)
