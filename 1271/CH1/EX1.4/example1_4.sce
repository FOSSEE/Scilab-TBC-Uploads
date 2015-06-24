clc 
// Given that
lambda_D = 5.5e-13 // Doppler width of orange light in meter
lambda = 6.058e-7 // wavelength of light in meter
// Sample Problem 4 on page no. 1.41
printf("\n # PROBLEM 4 # \n")
printf("\n Standard formula used \n delta_L = lambda^2/delta_lambda. \n")
coherence_length = (lambda ^ 2) / lambda_D// calculation for coherence light
printf("\n Coherence length = %f meter",coherence_length)
