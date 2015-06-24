clc 
// Given that
N = 2620 // no. of lines in plane transmission grating per inch
lambda = 5e-7 // wavelength of incident radiation in meter
// Sample Problem 33 on page no. 2.51
printf("\n # PROBLEM 33 # \n")
k = 2.54 / N * 1 / 100 // calculation for b+d in meter
n = k / lambda // calculation for order of spectrum
printf("\n Standard formula used \n n = k / lambda ")
printf("\n Order of spectrum = %d",n)
