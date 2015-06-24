clc 
// Given that
l = 10 // length of fiber in kilo meter
P_in = 900 // Power of input signal in micro watt
alpha = 2.3 // attenuation loss in dB
// Sample Problem 15 on page no. 281
printf("\n # PROBLEM 15 # \n")
P_out = P_in*10^(-alpha) // Power at output in microwatt
printf("\n Standard formula used \n alpha=10/L*log(Pi/Po).\n")
printf("\n Power at output end is %f micro Watt.",P_out)
// Answer given in book is 1.79 micro Watt
