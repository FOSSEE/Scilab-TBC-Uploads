clc 
// Given that
L = 3 // length of optical fiber in km
l = 6 // losses in dB
p = 5e-3 // input power in watt 
// Sample Problem 13 on page no. 5.20
printf("\n # PROBLEM 13 # \n")
alpha = (l * 3) / L
p_ = p / (exp((2.303 * alpha * L) / 10))
printf("\n Standard formula used \n alpha = (l * 3) / L. \n p_ = p / (exp((2.303 * alpha * L) / 10)). \n")
printf("\n Output power = %f mW. ",p_*1e3)
