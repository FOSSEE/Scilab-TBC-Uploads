clc 
// Given that
lambda = 6.328e-7 // wavelength of monochromatic light in meter
t = 1e-10 // chopping time in sec
// Sample Problem 7 on page no. 1.42
printf("\n # PROBLEM 7 # \n")
coherence_length = (3 * 10 ^ 8) * t // calculation for coherence length of monochromatic light 
band_width = 1 / t // calculation for band width 
line_width = ((lambda ^ 2) * band_width) / (3 * 10 ^ 8) // calculation for line width 
printf("\n Standard formula used \n coherence_length = (3 * 10 ^ 8) * t. \n line_width = ((lambda ^ 2) * band_width) / (3 * 10 ^ 8). \n")
printf("\n Coherence length of monochromatic light = %e meter. \n band width = %e Hz. \n line width = %f A.",coherence_length, band_width, line_width*1e10)
