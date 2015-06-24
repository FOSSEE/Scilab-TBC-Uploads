clc 
// Given that
lambda = 6.058e-7 // wavelength of light in meter
L = 0.2 // coherence length in meter
// Sample Problem 3 on page no. 1.40
printf("\n # PROBLEM 3 # \n")
printf("\n Standard formula used \n f = c/lambda. \n")
line_width = (lambda ^ 2) / L//calculation for line width
f_spread = (3 * 10 ^ 8) / L// calculation for frequency spread
f = (3 * 10 ^ 8) / lambda // calculation for frequency
f_stability = f_spread / f // calculation for frequency stability
coherence_time = L / (3 * 10 ^ 8) // calculation for coherence time
printf("\n Coherence time = %e sec",coherence_time)
printf("\n Line width = %e meter",line_width)
printf("\n Frequency stability = %e", f_stability)
