clc 
// Given that
tou = 1e-10 // coherence time in sec
lambda = 5.4e-7 // wavelength of light in meter
// Sample Problem 7 on page no. 4.28
printf("\n # PROBLEM 7 # \n")
delta_v = 1 / tou 
v_ = (3e+8) / lambda // calculation for frequency
d = delta_v / v_ // calculation for degree of non-monochromaticity
printf("\n Standard formula used \n delta_v = 1 / tou. \n v_ = (3e+8) / lambda. \n d = delta_v / v_. \n ")
printf("\n Degree of non-monochromaticity = %f ",d)
