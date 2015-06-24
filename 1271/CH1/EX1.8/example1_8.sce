clc 
// Given that
lambda = 6.438e-7 // wavelength of red cadmium line in meter
L = 3.8e-1 // coherence length in meter
// Sample Problem 8 on page no. 1.42
printf("\n # PROBLEM 8 # \n")
printf("\n Standard formula used \n delta_L = c*delta_t. \n")
coherence_time = L / (3 * 10 ^ 8)// calculation for coherence time
spectral_line_width = (lambda ^ 2) / L // calculation for spectral line width
printf("\n Coherence time of red cadmium line = %e sec. \n Spectral line width = %e meter.",coherence_time,spectral_line_width)
