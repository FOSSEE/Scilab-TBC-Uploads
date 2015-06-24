clc 
    
// Given that
l = 1.5 // length of fiber in kilo meter
P_in = 1 // let power of input signal is unity
P_out = 1/4 // power of output signal in micro Watt
// Sample Problem 14 on page no. 281
printf("\n # PROBLEM 14 # \n")
alpha = (10 * log10(P_in / P_out))/l //calculation for absorption coefficient
printf("\n Standard formula used \n alpha=10/L*log(Pi/Po).\n")
printf("\n Attenuation loss is %d dB/km. ",alpha)
