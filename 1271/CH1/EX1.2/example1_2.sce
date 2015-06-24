clc 
// Given that
lambda = 5.896e-7 // wavelength of light in meter
L = 2.945e-2 // coherence length in meter
// Sample Problem 2 on page no. 1.40
printf("\n # PROBLEM 2 # \n")
printf("\n Standard formula used \n delta_L = c*delta_t. \n")
coherence_time = L / (3 * 10 ^ 8) // calculation for coherence time
n = L / lambda // calculation for number of oscillations 
printf("\n Coherence time = %e sec.",coherence_time)
printf("\n No. of oscillations = %e.",n)
