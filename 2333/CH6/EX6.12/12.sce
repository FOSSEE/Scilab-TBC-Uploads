clc 
// Given that
P_in = 100 // power of input signal in mW
P_out = 50 // power of output signal in mW
// Sample Problem 12 on page no. 280
printf("\n # PROBLEM 12 # \n")
alpha = (10 * log10(P_in / P_out))//calculation for absorption coefficient
printf("\n Standard formula used \n alpha=10/L*log(Pi/Po).\n")
printf("\n Attenuation loss is %f dB. ",alpha)

