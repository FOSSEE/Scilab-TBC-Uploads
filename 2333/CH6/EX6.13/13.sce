clc 
// Given that
l = 150 // length of fiber in meter
P_in = 10 // power of input signal in micro Watt
P_out = 8 // power of output signal in micro Watt
// Sample Problem 13 on page no. 280
printf("\n # PROBLEM 13 # \n")
alpha = (10 * log10(P_in / P_out))/l //calculation for absorption coefficient
printf("\n Standard formula used \n alpha=10/L*log(Pi/Po).\n")
printf("\n Attenuation loss is %f dB/m. ",alpha)
