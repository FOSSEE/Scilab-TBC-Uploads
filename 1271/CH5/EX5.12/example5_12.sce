clc 
// Given that
L = 0.1 // length of fiber in km
p = 5e-6 // power of signal in watt
p_ = 1e-6 // power of signal inside the fiber in watt
// Sample Problem 12 on page no. 5.20
printf("\n # PROBLEM 12 # \n")
alpha = (10 * log10(p / p_)) / L//calculation for absorption coefficient
printf("\n Standard formula used \n alpha=10/L*log(Pi/Po).\n")
printf("\n Absorption coefficient = %f dB/km. ",alpha)
