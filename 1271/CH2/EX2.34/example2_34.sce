clc 
// Given that
N = 500000 // no. of lines in plane transmission grating per meter
lambda = 5e-7 // wavelength of incident radiation in meter
// Sample Problem 34 on page no. 2.51
printf("\n # PROBLEM 34 # \n")
k = 1 / N // calculation for b+d in meter
n = k / lambda // calculation for order of spectrum 
printf("\n Standard formula used \n k = 1 / N. \n n = k / lambda. \n")
printf("\n Order of spectrum = %d",n)
